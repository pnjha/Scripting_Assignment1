#!/bin/bash
sed -ne '/^[aeiouAEIOU].*[aeiouAEIOU]$/p' /usr/share/dict/words| wc -w
exit 0