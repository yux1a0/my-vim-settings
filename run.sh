#! /bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cat vimrc > ~/.vimrc
mkdir ~/.vim/vimundo/ ~/.vim/vimbackup ~/.vim/vimswap
