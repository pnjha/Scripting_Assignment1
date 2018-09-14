#!/bin/bash

var=`wc -l imdb-top-250.txt`
var=`sed 's/\(.\)\(.\)\(.\).*/\1\2\3/' <<< $var`

sed -e 's/\./\|/g' -e 's/(/\|/g' -e 's/)/\|/g' -e 's/\t//g' imdb-top-250.txt| 


awk -v lvar="$var" -F "|" '
BEGIN {  i=0;print " [ ";}

NR==1,NR==lvar{
	printf( "{\n \"ID\" :  \"%s\",  \n \"Name\" :  \"%s\", \n \"Year\" :  \"%s\", \n \"Rating\" : \"%s.%s\" \n},\n",$1,$2,$3,$4,$5);			
}
END{printf( "{\n \"ID\" :  \"%s\",  \n \"Name\" :  \"%s\", \n \"Year\" :  \"%s\", \n \"Rating\" : \"%s.%s\" \n}\n]",$1,$2,$3,$4,$5);}' imdb-top-250.txt > imdb-top-250.jason


exit 0
