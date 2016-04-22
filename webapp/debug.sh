./upload.sh --essential

shopt -s expand_aliases
source ~/.bash_profile

ssh-cidar2 'cd webapp; ./stop.sh'
ssh-cidar2 'cd webapp; ./run.sh' &

say -v Yuna 서버를 재시작했습니다, 멋진 주인님
