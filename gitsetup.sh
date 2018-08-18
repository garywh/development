## setup variables for git commit
# usage: sh gitsetup.sh <email address> 

sudo apt update
sudo apt install git

git config --global user.email "$1"
git config --global user.name "$USER"

