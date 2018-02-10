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

# the entries which reference /usr/local/bin are for macOS.

if [ -f /usr/local/bin/gls ]; then
    alias ls="gls -F --group-directories-first --color"
else
    alias ls="ls -F --group-directories-first --color"
fi

if ! shopt -oq posix; then
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    elif [ -f /usr/local/etc/bash_completion ]; then
        . /usr/local/etc/bash_completion
    fi
fi

## bc
# bcrc and always-on mathlibs
export BC_ENV_ARGS="-l $HOME/.bcrc"
# bc from brew
if [ -d /usr/local/opt/bc/bin ]; then
    export PATH="/usr/local/opt/bc/bin:$PATH"
fi
