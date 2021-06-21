# alias
alias v='vim'
alias l='ls -lvh'
alias h='history'
alias tailf='tail -f'

# Fisher init
if not functions -q fisher; eval (curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher); end
#fisher update

