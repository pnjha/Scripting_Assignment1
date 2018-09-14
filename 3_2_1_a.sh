#!/bin/bash
awk ' {printf("%s\t%s\t%s\n", $1,$2,$NF)}' marks.txt
exit 0