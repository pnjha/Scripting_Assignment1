#!/bin/bash
sed -r -i 's/([a-zA-Z0-9]+),([a-zA-Z0-9]+)/ \2,\1/' address-book.csv.txt
exit 0