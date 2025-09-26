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

# Set environment variables from .env file, if it exists
if [ -f ~/.minio ]; then
    source ~/.minio
    mc alias set $MINIO_ALIAS $MINIO_ENDPOINT $MINIO_USER $MINIO_SECRET_KEY
fi
