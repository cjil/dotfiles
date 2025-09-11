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
alias stow_dotfiles='stow -d ~/.dotfiles -t ~ .'

eval "$(starship init bash)"
