#!/bin/bash

awk 'BEGIN {printf("Topper: "); max=0}
			{
				if(max<$3+$4+$5){
					max = $3+$4+$5;
					Topper = $1;
				}
			}
				END {print Topper} ' marks.txt


awk ' BEGIN {print "Above average students: ";sum=0;i=0;avg=0;}
	NR>1 {
			sum += $3+$4+$5;
			i++;
		 }
		 { avg = sum/i; }
		 { if($3+$4+$5>avg) { printf("%s\n",$1);}}' marks.txt

exit 0