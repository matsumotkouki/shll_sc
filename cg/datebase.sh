#!/bin/bash
work_id=65
work_name=hoge
thumbnail=hoge
student_id=0
lain=1
fast=0
loopmax=32
for ((i=0;i<$loopmax;i++))
do
	if [ $fast -eq 0  ]; then
		work_name=$(ls | grep js | sed -n "$lain"p)
		thumbnail=$(ls | grep jpg | sed -n "$lain"p)
		echo "($work_id, '${work_name}', '${thumbnail}', $student_id)," > data.txt
		let fast++
		let lain++
		let work_id++
	else 
		work_name=$(ls | grep js | sed -n "$lain"p)
		thumbnail=$(ls | grep jpg | sed -n "$lain"p)
		echo "($work_id, '${work_name}', '${thumbnail}', $student_id)," >> data.txt
		let work_id++
		let lain++
	fi
done