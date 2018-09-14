#!/bin/bash
grep "^[aeiou].*[aeiou]$" /usr/share/dict/words|wc -w
exit 0