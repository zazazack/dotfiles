#!/bin/bash --posix
# Installs configuration files in dotfiles repo to users home directory
# i.e. Symlinks ~/dotfiles/* to ~/ (The correct way)


FILE_NAME='dotfiles'
CLONE_URL='https://github.com/zazazack/dotfiles.git'

# clone from github in the users home directory
echo "changing to $HOME"
cd $HOME
echo "---- Cloning $CLONE_URL to $HOME ----"
# NOTE: `--recursive` option initializes and updates the submodule(s) as well
# source: https://git-scm.com/book/en/v2/Git-Tools-Submodules#Cloning-a-Project-with-Submodules
git clone --recursive $CLONE_URL $FILE_NAME
echo "changing to $HOME/$FILENAME"
cd $FILE_NAME

echo -e '---- Linking files to $HOME ----'
# version below will NOT overwrite existing files w/ the same name #

find $PWD -maxdepth 1 -type f -not -iname install.sh -not -iname README.md \
-not -iname .gitmodules -not -iname .gitignore -exec ln -s '{}' $HOME \;

echo '---- Installation completed successfully ----'
echo '---- Please exit the shell and RESTART your Terminal ----'

# TODO: backup script
# TODO: error check after file backup, and `source`
# TODO: exclude `git` files from symlinking to ~/
# TODO: exclude `README.md` from symlinking to ~/
# TODO: consider moving files that need to be symlinkd to $HOME to a single directory to simplify the symlinking process and ensure that files that shouldn't be symlinked to $HOME are not.
