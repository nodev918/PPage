TABSTOP="set tabstop=2"
SHIFTWIDTH="set shiftwidth=2"
AUTOINDENT="set autoindent"
TARGET=$(pwd)/.vimrc


process(){
	rm $TARGET
	touch $TARGET
	echo $TABSTOP >> $TARGET
	echo $SHIFTWIDTH >> $TARGET
	echo $AUTOINDENT >> $TARGET
	echo "初始化完成, 開啟vim檢查有無正確設定"
}

cal(){
	echo "hihi"
}

echo "初始化.vimrc, 要確定欸?(y/n)"
read user_determine

if [ $user_determine == "y" ]
then
	process
else
	echo "好ㄅ,保留原始.vimrc"
fi


