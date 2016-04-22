shopt -s expand_aliases
source ~/.bash_profile

cd ..

rm -rf cidar2.tar.gz

if [ "$1" == "--essential" ]; then
	tar cvf cidar2.tar.gz --exclude='*.git' --exclude='node_module' --exclude='prettyphoto' --exclude='images' --exclude='fonts' webapp
else
	tar cvf cidar2.tar.gz --exclude='*.git' webapp
	ssh-cidar2 'rm -rf cidar2'
fi

scp -i ~/keys/amazon.jiwon.pem cidar2.tar.gz ubuntu@ec2-54-186-118-61.us-west-2.compute.amazonaws.com:/home/ubuntu

ssh-cidar2 'tar xvf cidar2.tar.gz'
ssh-cidar2 'rm cidar2.tar.gz'

say -v Yuna 업로드 완료했습니다, 멋진 주인님
