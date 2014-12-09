/* A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 *     transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]){
//	REQUIRES (M > 0);
//	REQUIRES (N > 0);  
	int block;
	int i, j, k ,l, p;
	int cache, temp, flag=0; 
	int tempArray[4]; 
	
	if(M == 32 && N == 32) { 
		// 8x8 blocked for 32x32 matrix
		block = 8; 
		for (i = 0; i<N; i+=block){ 
			for(j = 0; j<M; j+=block) { 
				for(k = i; k<i+block; k++){
					for(l =j; l <j+block; l++) { 
						if (k != l) {              //diagnal 
							B[l][k]= A[k][l]; 
						}
						else { 
							cache = l; 
							flag = 1; 
							temp = A[k][l]; 
						}
					}
					if (flag ==1) 
						B[cache][cache] = temp; 
					flag =0; 
				}
			}
		}
	}
	if (M == 64 && N == 64){ 
		//8x8 blocks
		block =8; 
		for(i =0; i<N; i+=block){ 
			for(j=0; j<M; j+=block){
				//transpose 8x4 matrics inside block from top 
				for(k =i; k<i+block; k++){ 
					for(l =0; l<4; l++){ 
						tempArray[l] = A[k][j+l]; 
					} 
					for(p = 0; p<4; p++){ 
						B[j+p][k]=tempArray[p]; 
					} 
				} 
				//transpose 8x4 matrices from bottom
				j=j+4; 
				for(k = i+(block-1); k>=i; k--){ 
					for(l=0; l<4; l++){ 
						tempArray[l] = A[k][j+l]; 
					} 
					for(p=0; p<4; p++){ 
						B[j+p][k] = tempArray[p]; 
					} 
				} 
				j=j-4; 
			} 
		} 
	} 
									
				
	if (M == 61 && N == 67) {
		// block by 20x20 matrix 
		block = 20;  
		for(i =0; i<N; i+=block){
			for(j= 0; j<M; j+=block){
				for(k = i; k<i+block; k++){
					for (l = j; l<j+block; l++){ 
						if (k > 66 || l > 60)
							continue; 
						else 
							B[l][k] = A[k][l];
					} 
				} 
			} 
		} 
	}  
}  

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

