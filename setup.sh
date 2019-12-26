#!/bin/bash

function configure_vim() {
	if [ ! -f  "$HOME/.vimrc" ]; then
		cp vimconf/vimrc $HOME/.vimrc
	fi

	if [ ! -d "$HOME/.vim" ]; then
		mkdir -p $HOME/.vim
		cp vimconf/*.vim $HOME/.vim
	fi
}

function main()
{
	configure_vim
}

main
