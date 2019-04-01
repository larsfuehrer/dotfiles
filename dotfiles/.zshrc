# 256 color
#export TERM="xterm-256color"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

ZSH_TMUX_AUTOSTART=true

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="false"

plugins=(tmux tmuxinator git docker fuck fzf helm kubectl terraform oc)

source $ZSH/oh-my-zsh.sh

# User configuration
autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# default editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

#
eval $(keychain --eval --quiet --confhost --agents ssh,gpg)

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

eval $(thefuck --alias)
