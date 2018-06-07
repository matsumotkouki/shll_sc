#!/bin/bash
student_id=0
student_name=0
password=hoge
end=0
filepass=hoge

echo 'どの学生番号からパスワードを発行しますか？'
read student_name
echo 'どの学生番号までパスワードを発行しますか？'
read end
echo '最後のstudent_idに１を足した値を入力してください'
read student_id
echo 'splのファイルパスを指定してください(例：./Documents/test.sql)'
read filepass

for ((i=$student_name;i<$end;i++))
do
    cat $filepass | grep "'${student_name}'"
	if [ $? -eq 0  ]; then
		echo "${student_name}の学生はパスワードが発行されていますので、追加を行いませんでした。"
        let student_name++
	else 
        password=$(openssl rand -base64 12 | fold -w 6 | head -1)
		echo "($student_id, '${student_name}', '${password}')," >> $filepass
		let student_id++
        let student_name++
	fi
done