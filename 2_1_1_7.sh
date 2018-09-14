#!/bin/bash
sed -ne '/.\{20\}/p' /usr/share/dict/words
exit 0