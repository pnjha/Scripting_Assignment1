#!/bin/bash
awk ' NR==1,NR==4 {printf("%s\t%s\t%s\n", $1,$2,$NF)}' marks.txt
exit 0