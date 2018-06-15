#!/bin/bash
pas=./Documents/js_convert_dir
line=1
max=$(ls | grep obj | wc -l)

while [ $line -le $max ]
do
	cd $pas
	obj=$(ls | grep obj | sed -n "$line"p)
	js=$(ls | grep obj | sed -n "$line"p | tr -d .fbx)
	python convert_obj_three.py -i $obj -o $js.js
	let line++
done