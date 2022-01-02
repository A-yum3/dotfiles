# ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# mkdir -p "$(dirname $ZINIT_HOME)"
# git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Self update
# zinit self-update

# Plugin parallel update
# zinit update --parallel

# Snippet
zinit snippet https://gist.githubusercontent.com/hightemp/5071909/raw/

SCRIPT_DIR=$HOME/dotfiles

source $SCRIPT_DIR/zsh/plugins.zsh
source $SCRIPT_DIR/zsh/env.zsh
source $SCRIPT_DIR/zsh/alias.zsh
source $SCRIPT_DIR/zsh/path.zsh
source $SCRIPT_DIR/zsh/config.zsh
source $SCRIPT_DIR/zsh/function.zsh

eval "$(starship init zsh)"
