#!/bin/bash
pass=/Users/matsumoto/Documents/CG_convert_dir/js_convert_dir
line=1
max=$(ls "$pass" | grep obj | wc -l)

while [ $line -le $max ]
do
	cd $pass
	obj=$(ls | grep obj | sed -n "$line"p)
	js=$(ls | grep obj | sed -n "$line"p | sed -e "s/.obj//")
	python convert_obj_three.py -i $obj -o $js.js
	let line++
done