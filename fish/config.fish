# alias
alias v='vim'
alias l='ls -lvh'
alias h='history'
alias tailf='tail -f'
alias python='python3'
alias vim='nvim'

# Fisher init
#if not functions -q fisher; eval (curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher); end
#fisher update
set --universal nvm_default_version lts
set --universal nvm_mirror https://npm.taobao.org/mirrors/node
nvm use lts default

