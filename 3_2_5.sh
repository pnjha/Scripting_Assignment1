#!/bin/bash

awk '
BEGIN {printf("​*** Grade Report for the ABC course ***​ \n\n");printf("\tName\tMarks\tGrade\n\n");avg=0;tos=0;highest=0;lowest=100;}

	NR>1 { if($3+$4+$5>highest) highest = $3+$4+$5; }
	NR>1 { if($3+$4+$5<lowest)  lowest= $3+$4+$5; }
	NR>1 {
				avg += $3+$4+$5;
				tos++;
		 }
	
	
	NR>1 { 
			if($3+$4+$5>95) printf("\t%s\t%s\t%s\n\n",$1,$2,"A");
			else if($3+$4+$5>=90) printf("\t%s\t%s\t%s\n\n",$1,$2,"A-");
			else if($3+$4+$5>=85) printf("\t%s\t%s\t%s\n\n",$1,$2,"B");
			else if($3+$4+$5>=80) printf("\t%s\t%s\t%s\n\n",$1,$2,"B-");
			else if($3+$4+$5>=75) printf("\t%s\t%s\t%s\n\n",$1,$2,"C");
			else if($3+$4+$5>=70) printf("\t%s\t%s\t%s\n\n",$1,$2,"C-");
			else if($3+$4+$5>=60) printf("\t%s\t%s\t%s\n\n",$1,$2,"D");
			else if($3+$4+$5<60) printf("\t%s\t%s\t%s\n\n",$1,$2,"F");}

END{printf("\tTotal Students: %d\n\n",tos);
	printf("\tHighest Score: %d\n\n",highest);
	printf("\tLowest Score: %d\n\n",lowest);
	printf("\tAverage Score: %d\n\n",avg/tos);
	printf("​ *** End of Grade Report ***\n\n​");}' marks.txt

exit 0	

	
