setup_bash_refresh(){
  echo "
# refresh ~/.bash_profile
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi
	" >> ./a.txt
}

setup_bash_refresh
