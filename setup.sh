#!/bin/bash

function exists_cmd()
{
	local cmd=$1

	if command -v $cmd >/dev/null; then
		#echo "$cmd found"
		return 0
	else
		#echo "$cmd no found"
		return 1
	fi
}

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
	cmds=(
		"gcc"
		"git"
		"tmux"
		"vim"
	)

	# check installed tools
	for cmd in ${cmds[@]}; do
		if ! exists_cmd "$cmd"; then
			sudo yum -y install $cmd
		fi
	done

	configure_vim
}

main
