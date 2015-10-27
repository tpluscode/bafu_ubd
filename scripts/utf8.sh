#!/bin/bash
if [ ! -d input ]; then 
	echo "script muss be run from project root"
	exit 1
fi
mkdir -p target/input-utf8 
for file in input/ubd/28/*.csv
do
	TARGETFILE="target/input-utf8/$file";
	echo $TARGETFILE;
	mkdir -p $(dirname $TARGETFILE);
        iconv -f windows-1252 -t utf8 "$file" > $TARGETFILE  
done
