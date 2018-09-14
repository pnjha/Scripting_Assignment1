#!/bin/bash
sed -i -e's/[[:punct:]]/\*/g' -e 's/[[:digit:]]/\?/g'  address-book.csv.txt
exit 0