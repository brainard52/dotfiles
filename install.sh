#!/bin/bash

function install {
	ln -s $(readlink -f "$1") "$2"
}
install files/vimrc ~/.vimrc
install files/vim ~/.vim
install files/bashrc ~/.bashrc

# ln -s $(readlink -f files/vimrc) ~/.vimrc
# ln -s files/vim) ~/.vim
# ln -s files/bashrc ~/.bashrc
