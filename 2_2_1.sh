#!/bin/bash
sed -n -e '/Anycity/p' address-book.csv.txt | sed -e 's/,.*,.*//g'
exit 0