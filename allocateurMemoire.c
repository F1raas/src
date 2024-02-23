/******************************************************************************
 * Laboratoire 3
 * GIF-3004 Systèmes embarqués temps réel
 * Hiver 2024
 * Marc-André Gardner
 * 
 * Fichier implémentant les fonctions de l'allocateur mémoire temps réel
 ******************************************************************************/

#include "allocateurMemoire.h"

// TODO: Implementez ici votre allocateur memoire utilisant l'interface decrite dans allocateurMemoire.h
BlocMemoire pool[ALLOC_N_BIG + ALLOC_N_SMALL];
char* poolMemoire = NULL;
size_t TailleMemoireTotale = 0;

int prepareMemoire(size_t tailleImageEntree, size_t tailleImageSortie) {
    //Augmentation de la limite de mémoire verrouillable
    //éviter que la mémoire ne soit paginée sur le disque
    struct rlimit rlim;
    getrlimit(RLIMIT_MEMLOCK, &rlim);
    rlim.rlim_cur = rlim.rlim_max;
    setrlimit(RLIMIT_MEMLOCK, &rlim);

    //Allocation du pool de mémoire
    TailleMemoireTotale = 5 * (tailleImageEntree + tailleImageSortie) * (ALLOC_N_BIG + ALLOC_N_SMALL);
    poolMemoire= (char*)malloc(TailleMemoireTotale);
    if (!poolMemoire) {
            return -1; 
        }

    //Verrouillage du pool de mémoire
    if (mlockall(MCL_CURRENT | MCL_FUTURE) != 0) {
        // nettoyer et récupérer les ressources allouées
            free(poolMemoire);
            return -1;
        }
    //Initialisation des blocs de mémoire
    for (int i = 0; i < ALLOC_N_BIG + ALLOC_N_SMALL; i++) {
            pool[i].blocPtr = poolMemoire + (i * (TailleMemoireTotale/ (ALLOC_N_BIG + ALLOC_N_SMALL)));
            pool[i].blocSize= (i < ALLOC_N_BIG) ? tailleImageSortie : ALLOC_SMALL_SIZE;
            pool[i].blocFree = 1;
        }

        return 0;


}


void* tempsreel_malloc(size_t size) {
    //Recherche d'un bloc libre
    // Si un bloc libre est trouvé, il est marqué comme utilisé
    for (int i = 0; i < ALLOC_N_BIG + ALLOC_N_SMALL; i++) {
        if (pool[i].blocFree && pool[i].blocSize >= size) {
            pool[i].blocFree = 0;
            return pool[i].blocPtr;
        }
    }
    return NULL; 
}

void tempsreel_free(void* ptr) {
    //Recherche du bloc sur lequel pointe le pointeur
    // Si le bloc est trouvé, il est marqué comme libre
    for (int i = 0; i < ALLOC_N_BIG + ALLOC_N_SMALL; i++) {
        if (pool[i].blocPtr == ptr) {
            pool[i].blocFree = 1;
            break;
        }
    }
}