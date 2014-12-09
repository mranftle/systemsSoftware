#include <stdio.h>
#include "student.h"
#include "input.h"

extern int score_histogram[NUM_BUCKETS];
extern int grade_tally[NUM_LETTER_GRADES];
extern short score_ranges[2*NUM_BUCKETS];
extern char grade_letters[NUM_LETTER_GRADES][2];

void compute_totals ()
{
	int i, j;
	for (i = 0; i < NUM_STUDENTS; i++){
		students[i].total = 0;
		students[i].grade = 'F';
	}
	for (i = 0; i<NUM_STUDENTS; i++){ 
		int sum = 0; 
		for(j =0; j<5; j++){
			sum += students[i].scores[j]; 
		}
		students[i].total = sum; 

	}
}


void compute_grades ()
{
	int i;
	for (i = 0; i <NUM_STUDENTS; i++){ 
		if (students[i].total < 100)
			students[i].grade = 'F'; 
		else if (students[i].total < 200)
			students[i].grade = 'D'; 
		else if (students[i].total <300) 
			students[i].grade = 'C'; 
		else if (students[i].total <400)
			students[i].grade = 'B'; 
		else 
			students[i].grade = 'A'; 
	} 

}


void compute_histogram ()
{
	int i;
	for(i =0; i<NUM_STUDENTS; i++){ 
		if (students[i].total <=50){
			score_histogram[0]++; 
			grade_tally[4]++; 
		}
		if (students[i].total > 50 && students[i].total <=100){ 
			score_histogram[1]++;
			grade_tally[4]++; 
		}
		if (students[i].total > 100 && students[i].total <=150){ 
			score_histogram[2]++; 
			grade_tally[3]++; 
		}
		if (students[i].total > 150 && students[i].total <=200){
			score_histogram[3]++; 
			grade_tally[3]++;
		}
		if (students[i].total > 200 && students[i].total <=250){ 
			score_histogram[4]++; 
			grade_tally[2]++;
		}
		if (students[i].total > 250 && students[i].total <=300){
			score_histogram[5]++; 
			grade_tally[2]++;
		}
		if (students[i].total > 300 && students[i].total <=350){ 
			score_histogram[6]++; 
			grade_tally[1]++;
		}
		if (students[i].total > 350 && students[i].total <=400){ 
			score_histogram[7]++;
			grade_tally[1]++;
		}
		if (students[i].total > 400 && students[i].total <=450){
			score_histogram[8]++;  
			grade_tally[0]++;
		}
		if (students[i].total > 450){
			score_histogram[9]++; 
			grade_tally[0]++;
		}
	}
	
	// for (i=0; i<10; i+=2){ 
// 		sum = (score_histogram[i]+score_histogram[i+1]); 
// 		grades_tally[i/2] = sum; 
// 	} 
}



