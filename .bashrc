#!/bin/bash
export TERM="xterm-256color"
export EDITOR=vim
export PATH=$PATH:/opt/gradle/gradle-4.3.1/bin
export PATH=$PATH:/opt/android-studio/bin
export ANDROID_HOME=/home/landon/Android/Sdk

# Used to be to fix my .tmux.conf because I was dumb and didn't call tpm *last*. Can be used in the future for tmux-related things however. Leaving here.
#if [ "$TMUX" != "" ]; 
#then
#    tmux source .tmux.conf
#fi
TODOFILE="$HOME/.TODO"
if [ -f $TODOFILE ]; then
	TODOCOUNT=`wc -l $TODOFILE | awk '{print $1}'`
	THINGTHINGS="thing"
	if [ "$TODOCOUNT" -gt "1" ]
	then
		THINGTHINGS="things"
	fi
	echo "You have $TODOCOUNT $THINGTHINGS in your todo list."
	unset TODOCOUNT
fi

alias ls="ls --group-directories-first --color"
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi
