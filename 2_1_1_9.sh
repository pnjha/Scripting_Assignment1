#!/bin/bash
sed -n '/^\(.\).*\1$/p' /usr/share/dict/words
exit 0