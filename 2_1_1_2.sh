#!/bin/bash
sed -ne '/^[aeiouAEIOU]/p' /usr/share/dict/words| wc -w
exit 0