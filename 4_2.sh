#!/bin/bash

var=$1	

number="${var//[^[:digit:]]/}"
punctuation="${var//[^[:punct:]]/}"


if test ${#number} -gt 0
then
	if test ${#punctuation} -gt 0
	then
		if test ${#1} -gt 7
		then
			echo "Strong Password"
		else
			echo "Weak Password"
		fi
	else
		echo "Weak Password"
	fi		
else  
	echo "Weak Password"
fi

exit 0