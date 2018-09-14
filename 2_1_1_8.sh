#!/bin/bash
sed -ne  '/^.\{5\}$/p' -ne '/^.\{10\}$/p' /usr/share/dict/words | sed -n '/^[^[:upper:]$]/p'
exit 0