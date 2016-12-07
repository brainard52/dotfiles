export TERM="xterm-256color"
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
