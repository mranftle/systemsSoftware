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
	int i,histoBucket,gradeBucket, inverse; 
	for(i =0; i<NUM_STUDENTS; i++){ 
		histoBucket = students[i].total / 50;
		inverse = 500 - students[i].total;  
		gradeBucket = inverse/100; 
		if (students[i].total == 500) { 
			score_histogram[9]++; 
			grade_tally[0]++; 
		}
		else { 
			score_histogram[histoBucket]++;
			grade_tally[gradeBucket]++; 
		}
	}
}


