#!/bin/bash
sed -ne '/India/p' -e '/Africa/p' /usr/share/dict/words
exit 0