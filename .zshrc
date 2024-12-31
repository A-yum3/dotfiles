SCRIPT_DIR=$HOME/dotfiles

# source $SCRIPT_DIR/zsh/plugins.zsh
source $SCRIPT_DIR/zsh/env.zsh
source $SCRIPT_DIR/zsh/alias.zsh
source $SCRIPT_DIR/zsh/path.zsh
source $SCRIPT_DIR/zsh/config.zsh

eval "$(starship init zsh)"
