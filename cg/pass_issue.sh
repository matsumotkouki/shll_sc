#!/bin/bash
student_id=13
student_number=hoge
password=hoge
lain=1
fast=0
loopmax=32
for ((i=0;i<$loopmax;i++))
do
	if [ $fast -eq 0  ]; then
		student_name=$(ls | grep js | sed -n "$lain"p | tr -d .js)
		password=$(openssl rand -base64 12 | fold -w 6 | head -1)
		echo "($student_id, '${student_name}', '${password}')," > password_database.txt
		let fast++
		let student_id++
		let lain++
	else 
		student_name=$(ls | grep js | sed -n "$lain"p | tr -d .js)
		password=$(openssl rand -base64 12 | fold -w 6 | head -1)
		echo "($student_id, '${student_name}', '${password}')," >> password_database.txt
		let student_id++
		let lain++
	fi
done