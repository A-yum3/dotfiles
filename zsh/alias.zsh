alias doc='docker compose'
alias c='clear'
alias ls='eza'
alias b='bat'

# 以下はただのエイリアス設定
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi