#!/bin/sh 

BACKUP_DIR="~/backup"
SCRIPT_DIR=`dirname $0`

[[ ! -d $BACKUP_DIR ]] && mkdir -p $BACKUP_DIR
mv ~/.bashrc ~/.bash_profile ~/.bashrc.d $BACKUP
cd $SCRIPT_DIR
cp -r .bashrc .bash_profile .bashrc.d $HOME

echo "successful!"
