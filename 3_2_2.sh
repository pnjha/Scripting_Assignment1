#!/bin/bash

awk ' {if ($2 ~ "M") {printf("%s\t%s\t%s\n", $1,$2,$NF)} }' marks.txt > male.txt
awk ' {if ($2 ~ "F") {printf("%s\t%s\t%s\n", $1,$2,$NF)} }' marks.txt > female.txt
exit 0