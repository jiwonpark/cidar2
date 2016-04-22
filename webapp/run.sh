#!/bin/bash

cd ~
#source .bash_profile
source .profile # aws

#export LC_ALL=C; cd ~/db/cidar2/; mongod --dbpath . &

#cd ~/cidar2
cd webapp && npm install
DEBUG=webapp:* ./bin/www
