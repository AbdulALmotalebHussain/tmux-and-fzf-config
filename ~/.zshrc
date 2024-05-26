# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Source fzf configuration if installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Function to use fzf for directory selection and cd into it
fzf_cd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# Bind Ctrl+F to fzf_cd function
zle -N fzf_cd
bindkey '^F' fzf_cd

# Enable command auto-completion
autoload -U compinit
compinit

