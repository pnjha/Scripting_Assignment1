#!/bin/bash
sed -i '/^[aeiouAEIOU]/d' address-book.csv.txt
exit 0