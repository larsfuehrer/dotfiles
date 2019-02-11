# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
    archlinux
    docker
    doctl
    fuck
    fzf
    gitfast
    helm
    kubectl
    terraform
    tmux
    )

source $ZSH/oh-my-zsh.sh

# User configuration

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

eval $(keychain --eval --quiet --confhost --agents ssh,gpg)

export PATH=/home/lars/.local/bin:$PATH