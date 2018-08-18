## create ssh folder and keys
# usage: sh createssh.sh <email address>

cd /home/$USER
mkdir .ssh
cd .ssh
ssh-keygen -t rsa -b 4096 -C "$1"
