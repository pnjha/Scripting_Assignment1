#!/bin/bash
echo `ifconfig` |sed -n -rE '/(([0-9a-f]){2}[-:]){5}([0-9a-f]{2})/p'
exit 0