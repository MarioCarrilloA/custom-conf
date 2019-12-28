#!/bin/bash

function configure_vim()
{
	if [ ! -d "$HOME/.vim" ]; then
		mkdir -p $HOME/.vim
	fi

	# Forced copy
	cp -rf vimconf/vimrc $HOME/.vimrc
	cp -rf vimconf/*.vim $HOME/.vim
}

function main()
{
	configure_vim
}

main
