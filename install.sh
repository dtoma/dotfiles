#!/bin/bash

set -euo pipefail

echo 'Install .bashrc'
ln -s `pwd`/.bashrc $HOME/.bashrc

echo 'Install .bash_profile'
ln -s `pwd`/.bash_profile $HOME/.bash_profile

echo 'Install .vimrc'
ln -s `pwd`/.vimrc $HOME/.vimrc

echo 'Install .vim/'
ln -s `pwd`/.vim $HOME/.vim

echo 'Install .gitconfig'
ln -s `pwd`/.gitconfig $HOME/.gitconfig

echo 'Install .gitignore_global'
ln -s `pwd`/.gitignore_global $HOME/.gitignore_global
