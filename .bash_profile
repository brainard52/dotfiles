export BASH_PROFILE=1
if [ -z ${BASHRC+x} ]; then
    if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
fi

if [ -d "/opt/homebrew/sbin" ]; then
    export PATH="/opt/homebrew/sbin:$PATH"
fi

if [ -d "/opt/homebrew/opt/python@3.8/bin" ]; then
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
fi

if [ -d "/opt/homebrew/opt/qt@5/bin" ]; then
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
fi
