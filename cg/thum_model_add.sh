mel_pass=/Users/matsumoto/Documents/CG_conbert_dir/
fbx_pass=/Users/matsumoto/Documents/CG_conbert_dir/obj_convert_dir/hand2/
line=1
max=$(ls $fbx_pass | grep fbx | wc -l)

while [ $line -le $max ]
do
	cd $fbx_pass
	filename=$(ls | grep fbx | sed -n "$line"p | sed -e "s/.fbx//")
    echo "file -f -options \"fbx\"  -ignoreVersion  -typ \"FBX\" -o \"C:/Users/share pc/Documents/cg/2sec/model/hand2/${filename}.fbx\";addRecentFile(\"C:/Users/share pc/Documents/cg/2sec/model/hand2/${filename}.fbx\", \"FBX\");
setAttr defaultRenderGlobals.imageFormat 8;
string $outputImageName = (\"C:/Users/share pc/Documents/cg/2sec/model/hand2/thum/${filename}.jpg\");
    renderWindowRender redoPreviousRender renderView;
    renderWindowEditor -edit -writeImage $outputImageName \"renderView\";
NewScene;
" >> ${mel_pass}thum_model.mel
	let line++
done