#!/bin/bash

# GLOBAL
RANAT="$(date +'%s')"
FILES="files"
EXTRA="extra"

function link {
	if [ "$1" == "create" ]
	then
		if [ ! -e "$3" ]
		then
			TARGET="$(readlink -f "$2")"
			echo "Linking: $TARGET -> $3"
			ln -s "$TARGET" "$3"

		else
			echo "Already exists: $3"

		fi

	elif [ "$1" == "remove" ]
	then
		echo $2
		if [ -f "$2" ]
		then
			echo "unlinking: $2"
			unlink "$2"

		else
			echo "Doesn't exist: $2"

		fi

	fi
}

# [extract|create] path/relative/to/pwd/to/archive.tgz path/to/target/relative/to/home
# Example:
# pwd: /home/bob/.dotfiles
# archive location: /home/bob/.dotfiles/extra/vim.tgz
# home: /home/bob
# command: archive extract extra/vim.tgz ./
function archive {
	if [ "$1" == "extract" ]
	then
		if [ -e "$2" ]
		then
			echo "Extracting: $2"

			# Expecting a parent directory for $3. Not sure how to
			# enforce this. This is due to the way the script
			# creates the archives in the next part of this
			# function.
			tar -xzf $(readlink -f $2) -C "$HOME/$3"

		else
			echo "Doesn't exist: $2"

		fi
	elif [ "$1" == "create" ]
	then
		if [ -e "$HOME/$3" ]
		then
			echo "Creating $2"

			# This will create an archive at $2 from a file at the
			# path of $HOME
			tar -czf $2 -C $HOME $3

		else
			echo "Doesn't exist: $3"

		fi
	fi

}

function backup {
	mv $1 $1-$RANAT
}

function install {
	link create $FILES/vimrc $HOME/.vimrc
	link create $FILES/bashrc $HOME/.bashrc
	link create $FILES/vundlerc $HOME/.vundlerc

	if [ -e "$HOME/.vim" ]
	then
		echo "moving $HOME/.vim to $HOME/.vim-$RANAT"
		backup $HOME/.vim

	fi
	archive extract $EXTRA/vim.tgz ./

}

function uninstall {

	link remove $HOME/.vimrc
	link remove $HOME/.bashrc
	link remove $HOME/.vundlerc

	mv "$HOME/.vim" "$HOME/.vim_old_$RANAT"

}

function createzips {
	archive create $EXTRA/vim.tgz .vim
}

if [ "$1" == "install" ]
then
	install

elif [ "$1" == "uninstall" ]
then
	uninstall

elif [ "$1" == "createzips" ]
then
	createzips

else
	echo "No valid parameters"

fi
