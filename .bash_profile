#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.cargo/env"
#PS1='[\u@\h \W]\$ '

# ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# Use gpg to manage SSH keys
# export GPG_TTY="$(tty)"
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent

export PATH="$PATH:$JAVA_HOME/bin:$HOME/.local/bin:$HOME/go/bin"

# bash history size
export HISTSIZE=1000000
export HISTCONTROL=ignoredups

export XDG_HOME_CONFIG="$HOME/.config"
export VISUAL='nvim'
export EDITOR=$VISUAL
export CGO_ENABLED=true
export MANPAGER='nvim +Man!'
export JAVA_HOME=/usr/lib/jvm/java-24-temurin
