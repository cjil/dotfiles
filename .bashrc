#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(starship init bash)"
