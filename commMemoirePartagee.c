/******************************************************************************
 * Laboratoire 3
 * GIF-3004 Systèmes embarqués temps réel
 * Hiver 2024
 * Marc-André Gardner
 * 
 * Fichier implémentant les fonctions de communication inter-processus
 ******************************************************************************/

#include "commMemoirePartagee.h"

// TODO: implementez ici les fonctions decrites dans commMemoirePartagee.h
// Appelé au début du programme pour l'initialisation de la zone mémoire (cas du lecteur)
int initMemoirePartageeLecteur(const char* identifiant,
                                struct memPartage *zone)
{
    struct stat sb;
    memset(&sb, 0, sizeof(sb));

    zone->fd = shm_open(identifiant, O_RDONLY, S_IRUSR);
    int tailleMemPartagee = (zone->fd != -1) ? fstat(zone->fd, &sb) : -1;


    while (zone->fd == -1 || tailleMemPartagee <= 0) //Si erreur ou taille de la memoire partagée 0, on recommence en boucle
    {   if (zone->fd != -1){ close(zone->fd); perror("fstat");}
        usleep(DELAI_INIT_READER_USEC);
        zone->fd = shm_open(identifiant, O_RDONLY, S_IRUSR);    
        tailleMemPartagee = (zone->fd != -1) ? fstat(zone->fd, &sb) : -1;
    }
    
    // Mappe l'espace mémoire partagé dans l'espace d'adressage du processus.
    zone->header = (struct memPartageHeader*)mmap(NULL, sb.st_size, PROT_READ, MAP_SHARED, zone->fd, 0);
    if (zone->header == MAP_FAILED) {
        perror("mmap");
        close(zone->fd);
        return -1; 
    }

    // Réglage du pointeur des données pour pointer vers le début des données.
    zone->tailleDonnees = sb.st_size - sizeof(struct memPartageHeader);
    zone->data = (unsigned char*)((char*)zone->header + sizeof(struct memPartageHeader));

    

    return 0; //retourne 1 mais a verifier

}

// Appelé au début du programme pour l'initialisation de la zone mémoire (cas de l'écrivain)
int initMemoirePartageeEcrivain(const char* identifiant,
                                struct memPartage *zone,
                                size_t taille,
                                struct memPartageHeader* headerInfos)
{
    zone->fd = shm_open(identifiant, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
    if (zone->fd == -1)
    {
        perror("erreur : initMemoirePartageeLecteur");
        return -1;
    }
    if (ftruncate(zone->fd, taille) == -1)
    {
        perror("erreur avec ftruncate");
        close(zone->fd);
        return -1;
    }
 
    zone->header = (struct memPartageHeader*)mmap(NULL, taille, PROT_READ | PROT_WRITE, MAP_SHARED, zone->fd, 0);
    if (zone->header == MAP_FAILED)
    {
        perror("erreur avec mmap");
        close(zone->fd); 
        return -1; 
    }

    pthread_mutexattr_t attr;
    pthread_mutexattr_init(&attr);
    pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);

    if (pthread_mutex_init(&(zone->header->mutex), &attr) != 0)
    {
        perror("Erreur lors de l'initialisation du mutex inter-processus");
        munmap(zone->header, taille);
        close(zone->fd);
        pthread_mutexattr_destroy(&attr); 
        return -1;
    }

    pthread_mutexattr_destroy(&attr); 

    if (headerInfos != NULL) {
        memcpy(zone->header, headerInfos, sizeof(struct memPartageHeader));
    } else {
        memset(zone->header, 0, sizeof(struct memPartageHeader));
    }
    zone->tailleDonnees = taille - sizeof(struct memPartageHeader);
    zone->data = (unsigned char*)((char*)zone->header + sizeof(struct memPartageHeader));
    return 0; // Succès

}

// Appelé par le lecteur pour se mettre en attente d'un résultat
int attenteLecteur(struct memPartage *zone)
{
    if (zone == NULL || zone->header == NULL) {
        perror("Zone mémoire non initialisée ou pointeur NULL");
        return -1;
    }

  
    while (zone->header->frameReader == zone->header->frameWriter) {
        sched_yield(); 
    }

    zone->header->frameReader = zone->header->frameWriter;

    return 0;
}
// Fonction spéciale similaire à attenteLecteur, mais asynchrone : cette fonction ne bloque jamais.
// Cela est utile pour le compositeur, qui ne doit pas bloquer l'entièreté des flux si un seul est plus lent.
int attenteLecteurAsync(struct memPartage *zone) {
    // Vérifie que la zone mémoire est correctement initialisée.
    if (zone == NULL || zone->header == NULL) {
        perror("Zone mémoire non initialisée ou pointeur NULL");
        return -1;
    }

    if (zone->header->frameReader != zone->header->frameWriter) {
        zone->header->frameReader = zone->header->frameWriter;
        return 0;
    } else {
       perror("La trame n'est pas encore prête");
       return -2;
    }
}
// Appelé par l'écrivain pour se mettre en attente de la lecture du résultat précédent par un lecteur
int attenteEcrivain(struct memPartage *zone)
{
    if (zone == NULL || zone->header == NULL) {
        perror("Zone mémoire non initialisée ou pointeur NULL");
        return -1;
    }

    while (zone->header->frameReader != zone->header->frameWriter) {
        sched_yield(); 
    }

    return 0;

}