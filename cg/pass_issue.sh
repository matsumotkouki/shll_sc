#!/bin/bash
student_id=13
student_name=1632001
password=hoge
lain=1
fast=0
loopmax=1632170
for ((i=$student_name;i<$loopmax;i++))
do
	if [ $fast -eq 0  ]; then
		let student_name++
		password=$(openssl rand -base64 12 | fold -w 6 | head -1)
		echo "($student_id, '${student_name}', '${password}')," > password_database.txt
		let fast++
		let student_id++
		let lain++
	else 
		let student_name++
		password=$(openssl rand -base64 12 | fold -w 6 | head -1)
		echo "($student_id, '${student_name}', '${password}')," >> password_database.txt
		let student_id++
		let lain++
	fi
done