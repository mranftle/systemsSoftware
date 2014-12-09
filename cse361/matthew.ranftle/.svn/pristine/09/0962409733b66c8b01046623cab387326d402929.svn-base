/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * For this lab I am implementing a malloc function using segregated lists. By changing the variables NUM_LISTBUCKETS and LIST_LENGTH, I can determine how many segregated lists I will have, and the length of each of these lists. For this implementation, I have chosen to use 42 lists each with a length of 100bits. If a freed block is greater than 4200bits it will be placed in the last list. The lists are placed in order in my Prologue, so when they are searched smaller lists have priority according to a first-fit search.  
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "Matt Ranftle 42345",
    /* First member's full name */
    "Matt Ranftle",
    /* First member's email address */
    "matthew.ranftle@wustl.edu",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Declare heap pointer and list variables */ 
static char *heap_listp = NULL; 	 // ptr to beginning of allocation heap
//static char *listBuckets;	 	// ptr to beginning of list bucket heap
int freeBlocks = 0; 
int i; 
int bucket; 

/* helper functions */ 
static void *extend_heap(size_t words); 
static void *coalesce(void *ptr); 
static void place(void *ptr, size_t words);
//static int list_bucket_no(size_t words); 
static void remove_from_bucket(void *ptr);
static void add_to_bucket(void *ptr); 
static void *find_free_block(size_t words);

/* Basic constants and macros. See Chapter 9.9 in Textbook for reference Lines .*/
#define WSIZE 4  /*Word and header/footer size(bytes) */ 
#define DSIZE 8  /* Double word size (bytes) */ 
#define MINSIZE 16 /* Minimum size */
#define CHUNKSIZE (1<<12) /* Extend heap by this amount (bytes) */  
#define MAX(x, y) ((x) > (y)? (x) : (y)) 

/*Free list bucket variables */
#define NUM_LISTBUCKETS 42
#define LIST_LENGTH 100

//#define PROLOGUESIZE 46

/* Pack a size and allocated bit into a word*/ 
#define PACK(size, alloc) ((size) | (alloc)) 

/* Read and write a word at address p */ 
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/*Read the size and allocated fields from address p*/ 
#define GET_SIZE(p) (GET(p) & ~0x7) //current block size
#define GET_ALLOC(p) (GET(p) & 0x1) //current block allocated
// #define GET_NEXT_ALLOC(p) (GET(p) & 0x4)//next block allocated
// #define GET_PREV_ALLOC(p) (GET(p) & 0x2) //prev block allocated

/* Given block ptr bp, compute address of its header and footer */ 
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) +GET_SIZE(HDRP(bp)) -DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* 
 * mm_init - initialize the malloc package. each block = WSIZE(4bits). 4 blocks for prologue/epilogue and a variable amount of  blocks to initialize pointers to free lists. lists hold blocks within the range of LIST_SIZE (i.e when LIST_SIZE ==0, 1. 1-99 2. 100-199 etc.). bytes >=4200 go in the last bucket. 
 *  @param 
 *	@return int 0 if successful, -1 if failed
 */
int mm_init(void) {

	 /* Create the initial empty heap */
	 if ((heap_listp = mem_sbrk((NUM_LISTBUCKETS+4)*WSIZE)) == (void *)-1)
		 return -1;
	 freeBlocks =0; // initialize free block counter
 	PUT(heap_listp, 0); /* Alignment padding */
 	PUT(heap_listp + (1*WSIZE), PACK(((NUM_LISTBUCKETS/2)+1)*DSIZE, 1)); /* Prologue header */
 
	/* 
	 * segregated list bucket pointers inside prologue 
	 */ 
	 for(i=2; i<NUM_LISTBUCKETS+2; i++) { 		
 		PUT(heap_listp + (WSIZE*i), 0); 
 	}
 
 	PUT(heap_listp + ((NUM_LISTBUCKETS+2)*WSIZE), PACK(((NUM_LISTBUCKETS/2)+1)*DSIZE, 1)); /* Prologue footer */
 	PUT(heap_listp + ((NUM_LISTBUCKETS+3)*WSIZE), PACK(0, 1)); /* Epilogue header */

 	heap_listp += (2*WSIZE);

	 /* Extend the empty heap with a free block of CHUNKSIZE bytes */
	 if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
 		return -1;
 	
	 return 0;
} //CHECKED
 
/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 * @param size_t size of block to malloc
 * @return void
 */
void *mm_malloc(size_t size){
	size_t asize;
	size_t extendsize;
	char *bp;
	
	/* check alignment rules and resize malloc request if necessary */
	if(size == 0)  // ignore requests of 0 
		return NULL; 
		
	if(size<=8)  // block size minimum -- may need to change depending on overhead
		asize = 16;
	else 
		asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);  //align to double word 
		
		
	/* Search the free list for a fit. If fit place pointer at header */
	if((bp = find_free_block(asize)) != NULL) { 
		place(bp, asize);
		return bp;
	}
	
	/* No fit found. Get more memory and place block at top of heap */
	extendsize = MAX(asize,CHUNKSIZE);
	if((bp = extend_heap(extendsize/WSIZE)) == NULL) //memory unable to add 
		return NULL; 
	place(bp, asize); 
	
	return bp;
} //CHECKED

/*
 * mm_free - Freeing a block sets its allocated bits to 0 and checks surrounding blocks to coalesce
 * @param ptr to block to free 
 * @return void
 */
void mm_free(void *ptr){	

// check if void request
// 	if( ptr == NULL || ptr == 0) 
// 		return NULL;
// 	
	size_t size = GET_SIZE(HDRP(ptr)); //get size of block 
	
	/*label block as unallocated*/ 
	PUT(HDRP(ptr), PACK(size, 0));   //set header allocated bit to 0 
	PUT(FTRP(ptr), PACK(size, 0));	 //set footer allocated bit to 0
	coalesce(ptr);
	
	
	//ptr = add_to_bucket(ptr); // add freed block to segregated list 
}  //CHECKED

/*
 * mm_realloc - Realloc resizes the block at ptr by ether increasing or decreasing its length. It checks the resulting block and creates the appropriate free lists to limit fragmentation. 
 * @param ptr to block to be resized, new desired size of block
 * @return void
 */
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    void *tailptr;
    size_t oldptr_size = GET_SIZE(HDRP(oldptr));
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(oldptr)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(oldptr)));
    size_t block_size = size + DSIZE;
    size_t check_aval;;
    size_t copySize;
    
  	/* if ptr == NULL, malloc new block  */ 
	if(oldptr == NULL) { 
		return mm_malloc(size);
	}
	
	/* if size == 0, free block at ptr */ 
	if(size ==0) { 
		mm_free(ptr); 
		newptr =0;
		return NULL;
	}

    /* if requested size < current size, shrink block */ 
    if(block_size<oldptr_size){ 
    	
    	/*if freed blocks not large enough, dont decrease */ 
		if((oldptr_size - block_size) < (2*DSIZE)) { 
			return oldptr; 
		}
    	    
    	/*align*/
    	if(size<=8)
			size = 16;
		else 
			size = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);  //align to double word
			
		/* if room to add a free block, create free block */
		if((oldptr_size - size) > (2*DSIZE)){

			 /*resize header and footer */
    		 PUT(HDRP(oldptr), PACK(size, 1)); 
	 		 PUT(FTRP(oldptr), PACK(size, 1)); 
	 
			 newptr =  (NEXT_BLKP(oldptr)); 
	 
			 //set header and footer for new (empty) block with remaining size
			 PUT(HDRP(newptr), PACK(oldptr_size - size, 0));
			 PUT(FTRP(newptr), PACK(oldptr_size- size, 0));
  	
			//coalesce new (free) block (adds to free list)
			coalesce(newptr);
	
			//return pointer to shurnk block
			return oldptr;
		}
    }
    
    /* else increase block size */
    else {
    	    
    	    /*Case 1 - prev and next blocks unallocated */ 
    	if(!prev_alloc && !next_alloc) { 
    		/* add size of three blocks */ 
    		newptr = PREV_BLKP(oldptr); 
    		tailptr = NEXT_BLKP(oldptr); 
    		check_aval = GET_SIZE(FTRP(newptr)) + oldptr_size + GET_SIZE(HDRP(tailptr));
    		
    		/* if block_size is too large, allocate new block at end of heap */
    		if(check_aval < block_size) { 
    			copySize = GET_SIZE(HDRP(oldptr)); 
    			newptr = mm_malloc(size); 
    			memcpy(newptr, oldptr, copySize);
    			mm_free(oldptr);
    			return newptr; 
    		} 
    		
    		/* else, block can fit. Add at newptr and add extra free block (if there is room for one) to free block bucket  */ 
    		else {
    		 
    			/* remove prev and next blocks from free list buckets*/ 
    			remove_from_bucket(newptr); 
    			remove_from_bucket(tailptr); 
    			
    			/* align */
    			if(size<=8)
					size = 16;
				else 
					size = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);  //align to double word
				
				/* if no room for freeblock expand size */
				if(check_aval < size + MINSIZE)
					size = check_aval;
					
    			/* copy block to newptr */
    			copySize = GET_SIZE(HDRP(oldptr)); 
    			memcpy(newptr, oldptr, copySize);
				
				/*add allocated block header and footer */
				PUT(HDRP(newptr), PACK(size, 1));
				PUT(FTRP(newptr), PACK(size, 1)); 
				
				
				/*if enough space to create free block, add free block to bucket*/
				if(check_aval >= size + MINSIZE)
					tailptr = NEXT_BLKP(newptr); 
					PUT(HDRP(tailptr), PACK(check_aval-size, 0));  //free block header
					PUT(FTRP(tailptr), PACK(check_aval-size, 0));  // free block footer 
					add_to_bucket(tailptr); 
				} 
				
			
			return newptr; 		    			
			}  
		
		/*Case 2 - prev unallocated, next allocated */ 
    	if(!prev_alloc && next_alloc) { 

    	     /*add size of two blocks */
    	    newptr = PREV_BLKP(oldptr);
    	 	check_aval = GET_SIZE(FTRP(newptr))+oldptr_size;
    	 	
    	 	/* if block_size is too large, allocate new block at end of heap */
    	 	if(check_aval < block_size) { 
    			copySize = GET_SIZE(HDRP(oldptr)); 
    			newptr = mm_malloc(size); 
    			memcpy(newptr, oldptr, copySize);
    			mm_free(oldptr);
    			return newptr; 
    		} 
    	    	    
    	    /* remove prev block from free list buckets*/ 
    	    remove_from_bucket(PREV_BLKP(oldptr));
    	    	    
    	    /* align */
    		if(size<=8)
				size = 16;
			else 
				size = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);  //align to double word
				
			/* if no room for freeblock expand size */
    	    if(check_aval < (size + 2*DSIZE))
    	    	 size = check_aval;
	    	    
    	    /*set header */
    	    PUT(HDRP(newptr), PACK(size, 1)); 
    	    
    	    /* copy block to newptr */	    
    	    copySize = GET_SIZE(HDRP(oldptr));
    	    memcpy(newptr, oldptr, copySize);
    	    	    
    	    /*set footer */
    	    PUT(FTRP(newptr), PACK(size, 1)); // resize old 
    	    	    
			/*if enough space to create free block, add free block to bucket*/
			if(check_aval >= (size + 2*DSIZE)){
			    tailptr = NEXT_BLKP(newptr);
			    PUT(HDRP(tailptr), PACK(check_aval - size, 0));
			    PUT(FTRP(tailptr), PACK(check_aval - size, 0));
			    add_to_bucket(tailptr);
    	    }
    	    return newptr;    	
    	}  
    	    
    	/*Case 3 - prev allocated, next unallocated */ 
    	if(prev_alloc && !next_alloc) { 
    		/* add size of two blocks */ 
    	
    		tailptr = NEXT_BLKP(oldptr); 
    		check_aval = oldptr_size + GET_SIZE(HDRP(tailptr));
    		
    		/* if block_size is too large, allocate new block at end of heap */
    		if(check_aval < block_size) { 
    			copySize = GET_SIZE(HDRP(oldptr)); 
    			newptr = mm_malloc(size); 
    			memcpy(newptr, oldptr, copySize);
    			mm_free(oldptr);
    			return newptr; 
    		} 
    		
    		/* else, block can fit. Add at newptr and add extra free block (if there is room for one) to free block bucket  */ 
    		else {
    		 	
    			/* remove next block from free list buckets*/ 
    			remove_from_bucket(tailptr); 
    			
    			/* align */
    			if(size<=8)
					size = 16;
				else 
					size = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);  //align to double word
				
				/* if no room for freeblock expand size */
				if(check_aval < size + MINSIZE)
					size = check_aval;
				
				/*add allocated block header and footer */
				PUT(HDRP(oldptr), PACK(size, 1));
				PUT(FTRP(oldptr), PACK(size, 1)); 
				
				
				
				/*if enough space to create free block, add free block to bucket*/
				if(check_aval >= size + MINSIZE){
					newptr = NEXT_BLKP(oldptr); 
					PUT(HDRP(newptr), PACK(check_aval-size, 0));  //free block header
					PUT(FTRP(newptr), PACK(check_aval-size, 0));  // free block footer 
					add_to_bucket(newptr); 
				} 
				
				return oldptr;
				
			
					    			
			}
		}
    	
    	/* Case 4- prev and next blocks allocated. malloc new block */
		else{ 
			copySize = GET_SIZE(HDRP(oldptr)); 
    		if(copySize > size) 
    			copySize = size;
    		newptr = mm_malloc(size); 
    		memcpy(newptr, oldptr, copySize);
    		mm_free(oldptr);
    		return newptr; 
    	
	}
	}
}

/*
 * extend_heap - adds extra space onto the heap. Called when currently freed blocks are insufficient 
 * @param size_t words
 * @return void
 */ 
static void *extend_heap(size_t words) { 
	char *bp; 
	size_t size; 
	
	/*Allocate an even number of words to maintain alignment*/
	size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
	
	if ((long)(bp = mem_sbrk(size)) == -1){
	//	dbg_printf('Error extend_heap \n');
		return NULL;
	}
		
	/* Initialize free block header/footer and the epilogue header */ 
	PUT(HDRP(bp), PACK(size, 0)); 
	PUT(FTRP(bp), PACK(size,0)); 
	PUT(HDRP(NEXT_BLKP(bp)), PACK(0,1)); 
	
	bp = coalesce(bp); // add new free list to segregated list 
	
	return bp;
} //CHECKED

/*
 * place- places block of size words at ptr. If there is enough space to allocate a new free block, block is divided 
 * @param ptr location to place block, words size of block to be added
 * @return void
 */
static void place(void *ptr, size_t words) {
	
	void *free_ptr; 
	size_t block_size = GET_SIZE(HDRP(ptr));
	
	/* block not big enough to be divided */
	if(block_size - words < MINSIZE) { 
		// remove_from_bucket(ptr);  
		
		/*label allocated block */ 
		PUT(HDRP(ptr), PACK(block_size, 1)); 
		PUT(FTRP(ptr), PACK(block_size, 1)); 
		remove_from_bucket(ptr); 
	} 
	/* if >= 16 words allocate block and declare remaining free block */
	else{
		remove_from_bucket(ptr); 
		
		/* allocated block */
		PUT(HDRP(ptr), PACK(words, 1)); 
		PUT(FTRP(ptr), PACK(words, 1)); 
		
		/* remaining free block */
		free_ptr = NEXT_BLKP(ptr); 
		PUT(HDRP(free_ptr), PACK(block_size - words, 0)); 
		PUT(FTRP(free_ptr), PACK(block_size - words, 0)); 
		add_to_bucket(free_ptr);
	}
} //CHECKED

/*
 * remove_from_bucket - removes list pointer from its list bucket. Pointer assignments depend on the list's relative location in the bucket. 
 * @param ptr to list 
 * @return void
 */
static void remove_from_bucket(void *ptr) { 
	/*get size and listNumber of ptr*/ 
	int size = GET_SIZE(HDRP(ptr)); 
	int listNumber = size/LIST_LENGTH; 
	if(listNumber > (NUM_LISTBUCKETS-1))
		listNumber =(NUM_LISTBUCKETS-1); 
	
	/* reset pointers according to 4 conditions depending on surrounding blocks */ 
	
	/*Case 1: only list in bucket */
	if(GET(ptr) == 0 && GET(WSIZE+ptr) ==0){ 
		PUT(heap_listp+(listNumber*WSIZE), 0); //set list bucket to 0 
	} 
	/*Case 2: first item in bucket */ 
	else if(GET(ptr) ==0 && GET(WSIZE+ptr)!=0) { 
		PUT(heap_listp+(listNumber*WSIZE), GET(WSIZE+ptr)); //set pointer to next
		PUT((char *)GET(WSIZE+ptr), 0);		//set pointer of next to head
	} 
	/*Case 3: last item in bucket */ 
	else if(GET(ptr) !=0 && GET(WSIZE+ptr)==0){ 
		PUT(((char *)GET(ptr) + WSIZE), 0); //set prev pointer as last
	}
	/*Case 4: in middle of bucket */ 
	else{ 
		PUT(((char *)GET(ptr) + WSIZE), GET(ptr + WSIZE)); // set next block prev pointer to prev 
		PUT(((char *)GET(ptr + WSIZE)), GET(ptr)); //set prev next pointer to next
	} 	

	--freeBlocks; 
} //CHECKED

/* 
 *      add_free_list - adds a given pointer to the free list.       
 * 		@param pointer bp 
 *  	@return void
 */
static void add_to_bucket(void *bp) {	 
 	/* get size and listNumber*/
	int size = GET_SIZE(HDRP(bp)); 
	int listNumber = size/LIST_LENGTH; 
	if(listNumber > (NUM_LISTBUCKETS-1)) 
		listNumber =(NUM_LISTBUCKETS-1); 
	void *next;
	void *prev; 
	void *list;
	
	list = ((char *)GET(heap_listp +(WSIZE*listNumber))); //pointer to listNumber bucket
	
	
	/* add list to listNumber bucket*/ 
	
	/* Case 1: listNumber is already populated*/
	if(list!= 0){
		prev = list;
		
		/* keep bucket size ordered by scanning bucket and inserting list at appropriate spot */ 
		while ((int)list != 0 && GET_SIZE(HDRP(list)) < size){ 		//while size > and not at end of bucket, keep indexing
			prev = list;
			list = (char *)GET(list+WSIZE);
		}
		list = prev; // reset last increase
		next = (char *)GET(list+WSIZE); 
		
		/*set pointers */
		PUT(list+WSIZE, (int)bp); 
		
		/*if next block, set pointer */
		if((int)next !=0) 
			PUT(next, (int)bp);
		
		PUT(bp, (int)list); 
		PUT(bp+WSIZE, (int)next);
		
	}
	
	//else (this list is not free)
	else {
		/*add to first index of bucket */
		PUT(heap_listp+(WSIZE*listNumber), (int)bp); 
		PUT(bp,0); 
		PUT(bp+WSIZE,0);
		
		}
} //CHECKED

/*
 * find_free_bucket - called when allocating a new block, searches list buckets for appropriate size free list. Searches list in first-fit order starting at the smallest fitting list 
 * @param size of block to be allocated
 * @return void
 */
static void *find_free_block(size_t words) {
 	/* First fit search */
 	if(freeBlocks ==0)
		return NULL;
	
	/*choose list number and initialize pointer*/
	int listNumber = words/LIST_LENGTH; 
	if(listNumber > (NUM_LISTBUCKETS-1))
		listNumber =(NUM_LISTBUCKETS-1); 
	void *bp; 
	// = (char *)GET(heap_listp +(WSIZE*listNumber)); 
 	
 	
 	/*scan through segregated lists starting at listNumber and return pointer if fit found*/
 	while(listNumber < NUM_LISTBUCKETS){
 		bp = (char *)GET(heap_listp + (listNumber * WSIZE));
 		while((int)bp != 0 && GET_SIZE(HDRP(bp)) > 0) { 
 			if (!GET_ALLOC(HDRP(bp)) && (GET_SIZE(HDRP(bp))>=words)){
 				return bp;
 			}
 			bp =(char *)GET(bp+WSIZE);
 		}
		listNumber++;
 	}
 	//no fits
 	return NULL;
 } //CHECKED

/*
 * coalesce- checks surrounding blocks and combines if free. Decreases list fragmentation and adds new list to list bucket 
 * @param ptr to block
 * @return void 
 */ 
static void *coalesce(void *ptr) { 
	size_t size = GET_SIZE(HDRP(ptr));
	size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(ptr)));
	size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
	
	/* Case 1*/
	if (prev_alloc && next_alloc) {
	 add_to_bucket(ptr);
  	 return ptr;
	}
	
	/* Case 2*/
	else if (prev_alloc && !next_alloc) {
		remove_from_bucket(NEXT_BLKP(ptr)); 
		size += GET_SIZE(HDRP(NEXT_BLKP(ptr)));
		PUT(HDRP(ptr), PACK(size, 0));
		PUT(FTRP(ptr), PACK(size,0));
		add_to_bucket(ptr);
	}
	
	/* Case 3 */
	else if (!prev_alloc && next_alloc) {
		remove_from_bucket(PREV_BLKP(ptr)); 
    	size += GET_SIZE(HDRP(PREV_BLKP(ptr)));
    	PUT(HDRP(PREV_BLKP(ptr)), PACK(size, 0));
    	PUT(FTRP(PREV_BLKP(ptr)), PACK(size, 0));
    	ptr = PREV_BLKP(ptr);
    	add_to_bucket(ptr); 
	}
	
	/*Case 4*/
	else {
		remove_from_bucket(NEXT_BLKP(ptr)); 
		remove_from_bucket(PREV_BLKP(ptr)); 
  		size += GET_SIZE(HDRP(PREV_BLKP(ptr))) + GET_SIZE(FTRP(NEXT_BLKP(ptr)));
  		PUT(HDRP(PREV_BLKP(ptr)), PACK(size, 0));
  		PUT(FTRP(PREV_BLKP(ptr)), PACK(size, 0));
  		  
  		ptr = PREV_BLKP(ptr); 
  		add_to_bucket(ptr); 
	}
	
	return ptr; 
} //CHECKED

/*
 * check functions:  *couldn't get some of them to work
 */
// checks if all free lists are in block, no allocated lists are in free block and for heap overlap
// int mm_check(void){
// 	
// 	void *free;
// 	/* Check all free lists have been assigned to block
//     // free = NULL;
// //     while(GET_SIZE(HDRP(free)) > 0) {
// //         if(!GET_ALLOC(HDRP(free))){
// //             
// //       //NOT WORKING  IGNORE THIS TEST
// //       printf("Free list not assigned to block");
// //         }
// //     }
//     
//     
// 	/* Check all lists in free blocks are free
//     void *free;
//     free = heap_listp + WSIZE);
//     while(GET_SIZE(HDRP(free)) > 0 && free != heap_listp + (NUM_LISTBUCKETS*WSIZE)) {
//         if(GET_ALLOC(HDRP(free))) {
//             //printf('Error: list not marked as free'); 
//             return -1;
//         }
//         free = NEXT_FREE_BLKP(free);
//     }
// 	
// 	
// 	/* Do any allocated blocks overlap
// 	free = heap_listp +WSIZE;
//     while(GET_SIZE(HDRP(free)) > 0) {
//         if(GET_ALLOC(HDRP(free))){
//             if(FTRP(free)>=NEXT_BLKP(HDRP(free))) {
//                 printf("ERROR: OVERLAP");    
//                 return -1;
//             }
//         }  
//     }
//     return 0;
// }
