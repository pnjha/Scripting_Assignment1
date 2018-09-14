#!/bin/bash
grep -xP "[^[:upper:]]{5,5}" /usr/share/dict/words && grep -xP "[^[:upper:]]{10,10}" /usr/share/dict/words
exit 0