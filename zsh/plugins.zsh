zinit light marlonrichert/zsh-autocomplete

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

# zinit ice from"gh-r" as"program"
# zinit load junegunn/fzf-bin

# For postponing loading `fzf`
zinit ice lucid wait
zinit snippet OMZP::fzf

# jq をインタラクティブに使える。JSONを標準出力に出すコマンドを入力した状態で `Alt+j` すると jq のクエリが書ける。
# 要 jq
zinit light reegnz/jq-zsh-plugin

# anyframeのセットアップ
zinit light mollifier/anyframe

zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
