#!/bin/bash
grep -xe "\(.\).*\1" /usr/share/dict/words
exit 0