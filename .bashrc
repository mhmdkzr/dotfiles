case $- in
*i*) ;;
*) return ;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=5000
HISTFILESIZE=5000

shopt -s checkwinsize
shopt -s globstar

case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

export PS1="\[\033[38;5;10m\][\u@\H]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\][\t]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;45m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;13m\][\\$]\[$(tput sgr0)\]\[\033[38;5;15m\] "

export PATH="$PATH:/home/mhmd/.local/bin"
