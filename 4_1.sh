#!/bin/bash

extension="${1#*.}"

fileName=$1

case $extension in

	"gz") gzip -d $fileName;;
	"bz2") bzip2 -d $fileName;;
	"xz") xz -d $fileName;;
	"tar.gz") tar xzvf $fileName;;
	"tar.bz2") tar xjvf $fileName;;
	"tar.xz") tar xJvf $fileName;;
	"tar") tar xvf $fileName;;
	"zip") unzip $fileName;;
	*) echo "Wrong file name entered ";;

esac


exit 0