## setup variables for git commit
# usage: sh gitsetup.sh <email address> 

git config --global user.email "$1"
git config --global user.name "$USER"

