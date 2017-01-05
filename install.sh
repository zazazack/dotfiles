#!/bin/bash --posix
# Installs dotfiles to users home directory.

# Run this script from within the cloned repo dir


FILE_NAME='dotfiles'


echo -e '---- Linking dotfiles to $HOME ----'
# version below will NOT overwrite existing files w/ the same name
find $PWD -maxdepth 1 -type f -not -iname install.sh -not -iname README.md \
-not -iname .gitmodules -not -iname .gitignore -exec ln -s '{}' $HOME \;
echo "---- Installing awesome vimrc ----"
ln -s $HOME/$FILE_NAME/vimrc $HOME/.vim_runtime
sh $HOME/$FILE_NAME/vimrc/install_awesome_vimrc.sh
echo '---- Installation completed successfully ----'
echo '---- Please exit the shell and RESTART your Terminal for the changes to take effect ----'

# TODO: backup script
# TODO: error check after file backup, and `source`
# TODO: exclude `git` files from symlinking to ~/
# TODO: exclude `README.md` from symlinking to ~/
# TODO: consider moving files that need to be symlinkd to $HOME to a single directory to simplify the symlinking process and ensure that files that shouldn't be symlinked to $HOME are not.
# TODO: include a line to install vimrc submodule @done
