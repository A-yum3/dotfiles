alias mfs='php artisan migrate:fresh --seed'
alias cda='php artisan package:discover --ansi'
alias pa='php artisan'
alias pu='./vendor/phpunit/phpunit/phpunit'
alias att='atcoder-tools test'
alias atg='atcoder-tools gen'
alias ats='atcoder-tools submit'
alias maf='~/sh/make_atcoder_p'
alias nir='npm install && npm run dev'
alias doc='docker compose'
alias c='clear'
alias ls='exa'
alias b='bat'

# 以下はただのエイリアス設定
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi