#!/bin/bash
obj=1632002
js=1632002
max=1632162
pas=./Documents/hand_obj/

while [ $obj -le $max ]
do
	python convert_obj_three.py -i $obj.obj -o $js.js
	let obj++
	let js++S
done
