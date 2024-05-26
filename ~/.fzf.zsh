# Setup fzf
# ---------
if [[ ! "$PATH" == */home/snorpiii/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/snorpiii/.fzf/bin"
fi

# Auto-completion
[[ $- == *i* ]] && source "/home/snorpiii/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
source "/home/snorpiii/.fzf/shell/key-bindings.zsh"
