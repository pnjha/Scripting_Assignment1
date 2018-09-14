#!/bin/bash
sed -ne '/^[[:upper:]]/p' /usr/share/dict/words
exit 0