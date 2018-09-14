#!/bin/bash
sed -n '/.*\/198[0-9]\,.*/p' address-book.csv.txt | wc -l
exit 0