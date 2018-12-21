export BASH_PROFILE=1
if [ -z ${BASHRC+x} ]; then
    if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
fi
