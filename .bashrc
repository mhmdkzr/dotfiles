case $- in
    *i*) ;;
        *) return;;
esac

case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

HISTSIZE=5000
HISTFILESIZE=5000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '
PROMPT_DIRTRIM=2
PROMPT_COMMAND='history -a'

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set mark-symlinked-directories on"

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
shopt -s cmdhist

export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

export PS1="\[\033[38;5;10m\][\u@\H]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\][\t]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;45m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;13m\][\\$]\[$(tput sgr0)\]\[\033[38;5;15m\] "

export PATH="$PATH:/home/debian/.local/bin"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
