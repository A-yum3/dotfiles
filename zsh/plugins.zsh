
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma-continuum/fast-syntax-highlighting \
                zdharma-continuum/history-search-multi-word

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

# 補完
# zinit ice wait'0'; zinit light zsh-users/zsh-completions
zinit light marlonrichert/zsh-autocomplete

zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# iTerm2を使っている場合に、コマンド `tt タブ名` でタブ名を変更できる
zinit light gimbo/iterm2-tabs.zsh

# zの導入
zinit load agkozak/zsh-z
