# Path to your oh-my-zsh installation.UTOSTART=true
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

ZSH_TMUX_AUTOSTART=true

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
