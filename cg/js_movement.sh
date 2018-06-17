#!/bin/bash
pass=/Users/matsumoto/Documents/CG_convert_dir/js_convert_dir
line=1
max=$(ls "$pass" | grep obj | wc -l)

while [ $line -le $max ]
do
	cd $pass
	filename=$(ls | grep js | sed -n "$line"p | sed -e "s/.js//")
	cp $filename.js .js/$filename.js
	let line++
done