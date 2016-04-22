shopt -s expand_aliases
source ~/.bash_profile

ssh-cidar2 'cd webapp; ./stop.sh'
ssh-cidar2 'cd webapp; ./run.sh </dev/null >run.log 2>&1 &'
