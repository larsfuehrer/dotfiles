local ZPLUG_DIR="$HOME/.zplug"

if [[ ! -d ~/.zplug ]] then
    git clone https://github.com/zplug/zplug $ZPLUG_DIR
fi

source $ZPLUG_DIR/init.zsh
source ~/.exports
source ~/.aliases

autoload -Uz compinit
compinit

if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa)"
fi

zplug 'themes/robbyrussell.zsh-theme', as:theme, from:oh-my-zsh
zplug "plugins/zsh-autosuggestions", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
#zplug "plugins/git", from:oh-my-zsh
#zplug "plugins/fzf", from:oh-my-zsh
#zplug "plugins/tmux", from:oh-my-zsh
#zplug "plugins/kubectl", from:oh-my-zsh
#zplug "plugins/doctl", from:oh-my-zsh
#zplug "plugins/helm", from:oh-my-zsh
#zplug "plugins/kube-ps1", from:oh-my-zsh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load --verbose

