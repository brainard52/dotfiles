#!/bin/bash
export BASHRC=1

if [ -e "/etc/bashrc" ]; then
    source /etc/bashrc
fi

if [ -e "/usr/bin/sw_vers" ]; then
    PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
    PATH="/opt/homebrew/opt/ed/libexec/gnubin:$PATH"
    PATH="/opt/homebrew/opt/ed/bin:$PATH"
    PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
    PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
    PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
    PATH="/opt/homebrew/bin/:$PATH"
    MANPATH="#{opt_libexec}/gnuman:$MANPATH"

    if [ -e "/opt/homebrew/etc/bash_completion.d" ]; then
        for i in `find /opt/homebrew/etc/bash_completion.d -type l,f`; do
            source $i
        done
    fi
fi

if [ -e "/var/lib/snapd/snap/bin" ]; then
    PATH="/var/lib/snapd/snap/bin:$PATH"
fi

_pP="\[\033[0;36m\]"
_pS="\[\033[0;32m\]"
_pB="\[\033[1;37m\]"
export PS1="\[\e[00;35m\]\u\[\e[0m\]\[\e[00;37m\] @ \[\e[0m\]\[\e[00;32m\]\H \[\e[0m\]\n\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\] - \[\e[0m\]\[\e[00;34m\]\T \[\e[0m\]\$ "

export TERM="xterm-256color"
export TERMINAL="xfce4-terminal"
export EDITOR=vim
export PATH=/home/landon/.bin:$PATH
export PATH=/home/landon/.bin/exec:$PATH
export PAGER=less

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
    alias ls="/usr/local/bin/gls -F --group-directories-first --color"
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
