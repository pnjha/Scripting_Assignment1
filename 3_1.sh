#!/bin/bash
awk '
{ 
	if(line[$0]==0)
		{
			line[$0]++
			print $0
		}
	
}'
exit 0