#!/bin/bash
sed  's/^\(.\)\(.\+\)\(.\)$/\3\2\1/' address-book.csv
exit 0