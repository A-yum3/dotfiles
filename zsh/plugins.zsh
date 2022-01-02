
# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma-continuum/history-search-multi-word

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

# jq をインタラクティブに使える。JSONを標準出力に出すコマンドを入力した状態で `Alt+j` すると jq のクエリが書ける。
# 要 jq
zinit light reegnz/jq-zsh-plugin

# Gitの変更状態がわかる ls。ls の代わりにコマンド `k` を実行するだけ。
# zinit light supercrabtree/k

# AWS CLI v2の補完。
# 要 AWS CLI v2
# この順序で記述しないと `complete:13: command not found: compdef` のようなエラーになるので注意
autoload bashcompinit && bashcompinit
source ~/.zinit/plugins/drgr33n---oh-my-zsh_aws2-plugin/aws2_zsh_completer.sh
complete -C '/usr/local/bin/aws_completer' aws
zinit light drgr33n/oh-my-zsh_aws2-plugin

# anyframeのセットアップ
zinit light mollifier/anyframe

# クローンしたGit作業ディレクトリで、コマンド `git open` を実行するとブラウザでGitHubが開く
# zinit light paulirish/git-open

# 補完
# zinit ice wait'0'; zinit light zsh-users/zsh-completions
# autoload -Uz compinit && compinit
zinit light marlonrichert/zsh-autocomplete

zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# iTerm2を使っている場合に、コマンド `tt タブ名` でタブ名を変更できる
zinit light gimbo/iterm2-tabs.zsh

# zの導入
zinit load agkozak/zsh-z
