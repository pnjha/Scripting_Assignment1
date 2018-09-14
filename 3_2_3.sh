#!/bin/bash
awk 'BEGIN {printf("%s\t%s","Name","Marks\n")} NR>1 {printf("%s\t%d\n",$1,$3+$4+$5)}' marks.txt
exit 0