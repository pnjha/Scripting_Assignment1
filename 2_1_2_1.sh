#!/bin/bash
ls -l| sed -n '/^[d]/p' | wc -l
exit 0