#!/bin/bash
echo 'melが保存されているディレクトリを入力してください(最後は/で入力してください)'
read mel_pass
echo 'CGが保存されているディレクトリを入力してください(最後は/で入力してください)'
read fbx_pass
line=1
max=$(ls $fbx_pass | grep fbx | wc -l)

while [ $line -le $max ]
do
	cd $fbx_pass
	filename=$(ls | grep fbx | sed -n "$line"p | sed -e "s/.fbx//")
    echo "file -f -options \"fbx\"  -ignoreVersion  -typ \"FBX\" -o \"C:/Users/share pc/Documents/cg/2sec/model/hand2/${filename}.fbx\";addRecentFile(\"C:/Users/share pc/Documents/cg/2sec/model/hand2/${filename}.fbx\", \"FBX\");
file -force -options \"groups=1;ptgroups=1;materials=1;smoothing=1;normals=1\" -type \"OBJexport\" -pr -ea \"C:/Users/share pc/Documents/cg/2sec/model/hand2/OBJ/${filename}.obj\";
NewScene; " >> ${mel_pass}fbx_obj_convert.mel
	let line++
done