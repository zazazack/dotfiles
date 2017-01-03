#!/bin/bash --posix
# Installs configuration files in dotfiles repo to users home directory
# i.e. Symlinks ~/dotfiles/* to ~/ (The correct way)

echo $(bash --version)
echo $(pwd)

FILE_NAME='dotfiles' CLONE_URL='https://github.com/zazazack/dotfiles.git' #
BACKUP_DIR=$HOME'/dotfiles.bak'

# clone from github in the users home directory
echo "changing to $HOME"
cd $HOME
echo "---- Cloning $CLONE_URL to $HOME ----"
git clone $CLONE_URL $FILE_NAME
echo "changing to $HOME/$FILENAME"
cd $FILE_NAME

echo -e '---- Linking files to $HOME/ ----'
# version below will NOT overwrite existing files w/ the same name #
find $PWD -maxdepth 1 -type f -exec ln -s {} $HOME \;

echo '---- Installation completed successfully ----'

echo '---- Please exit the shell and RESTART your Terminal ----'

# TODO: backup script
# TODO: error check after file backup, and `source`
