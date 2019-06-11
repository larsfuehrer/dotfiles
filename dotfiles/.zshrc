#########
# ZPLUG #
#########
local ZPLUG_DIR="$HOME/.zplug"

if [[ ! -d ~/.zplug ]] then
    git clone https://github.com/zplug/zplug $ZPLUG_DIR
fi

source $ZPLUG_DIR/init.zsh


############
# Settings #
############
DEFAULT_USER=$(whoami)
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"


#########
# Theme #
#########
zplug "powerlevel9k/powerlevel9k", as:theme

ZSH_THEME="powerlevel9k/powerlevel9k"


########################
# Powerline9k settings #
########################
#POWERLINE9K_RIGHT_PROMPT_ELEMENTS=(battery)

###########
# Plugins #
###########
zplug "plugins/zsh-autosuggestions", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/oc", from:oh-my-zsh
zplug "plugins/doctl", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
    git
    fzf
    kubectl
    oc
    doctl)


###########
# Sources #
###########
source ~/.exports
source ~/.aliases
source ~/.oh-my-zsh/oh-my-zsh.sh
#source ~/.oh-my-zsh/custom/plugins/z/z.sh


#################
# User Settings #
#################
autoload -Uz compinit
compinit

if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa)"
fi

