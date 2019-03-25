
/* Copied from persist.h from ingot-redis */

#include "ingot.h"

enum {
    /*PT_dict = 1,
    PT_dictEntry,
    PT_dictEntryPtr,
    PT_dictht, // not real
    PT_sds,    //also not real 
    PT_sds5 = PT_sds,
    PT_sds8,
    PT_sds16,
    PT_sds32,
    PT_sds64,
        PT_sdsOld,
    PT_robj,
    -----------------------*/
    PT_serverRoot,
    PT_item
};

extern int pmregion;

typedef struct root_struct {
    void *self_ptr;
} root;

extern root *root_ptr;

/*
#define PT_ARRAY 0x80000000

void * persistent_alloc(size_t sz, PersistType type, int region);
void persistent_free(void * ptr);
void * persistent_realloc(void * ptr, size_t newsize);
void persistent_parent(void * parent, void * child);
int persistent_revion(void * ptr);
*/
