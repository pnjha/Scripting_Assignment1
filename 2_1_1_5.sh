#!/bin/bash
sed -ne '/[[:punct:]]/p' /usr/share/dict/words
exit 0