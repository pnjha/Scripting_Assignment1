#!/bin/bash
sed -n -rE '/[0-9]{0,3}\.[0-9]{0,3}\.[0-9]{0,3}\.[0-9]{0,3}/p' 
exit 0