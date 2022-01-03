
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit light marlonrichert/zsh-autocomplete

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# 補完
zinit light zsh-users/zsh-completions

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zdharma-continuum/history-search-multi-word

zinit light Aloxaf/fzf-tab

# For postponing loading `fzf`
zinit ice lucid wait
zinit snippet OMZP::fzf

# jq をインタラクティブに使える。JSONを標準出力に出すコマンドを入力した状態で `Alt+j` すると jq のクエリが書ける。
# 要 jq
zinit light reegnz/jq-zsh-plugin

# AWS CLI v2の補完。
# 要 AWS CLI v2
# この順序で記述しないと `complete:13: command not found: compdef` のようなエラーになるので注意
autoload bashcompinit && bashcompinit
source ~/.zinit/plugins/drgr33n---oh-my-zsh_aws2-plugin/aws2_zsh_completer.sh
complete -C '/usr/local/bin/aws_completer' aws
zinit light drgr33n/oh-my-zsh_aws2-plugin

# anyframeのセットアップ
zinit light mollifier/anyframe

zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# zの導入
zinit load agkozak/zsh-z
