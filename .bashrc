export TERM="xterm-256color"

# Used to be to fix my .tmux.conf because I was dumb and didn't call tpm *last*. Can be used in the future for tmux-related things however. Leaving here.
#if [ "$TMUX" != "" ]; 
#then
#    tmux source .tmux.conf
#fi

if [ -f ~/.TODO ]
then

    TODOCOUNT=`wc -l .TODO | awk '{print $1}'`
    THINGTHINGS="thing"
    if [ "$TODOCOUNT" -gt "1" ]
    then
        THINGTHINGS="things"
    fi
    echo "You have $TODOCOUNT $THINGTHINGS in your todo list."
    unset TODOCOUNT
fi
