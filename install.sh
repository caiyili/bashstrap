#!/bin/sh 

TIME=`date +"%Y%m%d%H%M%S"`
BACKUP_DIR="$HOME/backup/$TIME"
SCRIPT_DIR=`dirname $0`

[[ ! -d $BACKUP_DIR ]] && mkdir -p $BACKUP_DIR
mv -f ~/.bashrc ~/.bash_profile ~/.bashrc.d ~/.gitconfig $BACKUP_DIR
cd $SCRIPT_DIR
cp -r .bashrc .bash_profile .bashrc.d .gitconfig $HOME

echo "successful!"
