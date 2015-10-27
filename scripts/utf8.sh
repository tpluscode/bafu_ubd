#!/bin/sh
for file in ../input/ubd/28/*.csv
do
        iconv -f windows-1252 -t utf8 "$file" > "$file.new"  &&
        mv -f "$file.new" "$file"
done
