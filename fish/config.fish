# alias
alias v='vim'
alias l='ls -lvh'
alias h='history'
alias tailf='tail -f'
alias python='python3'
alias vim='nvim'
alias scode='env GDK_SCALE=1 GDK_DPI_SCALE=1.2 CLUTTER_SCALE=1 code'
alias swechat='env GDK_SCALE=1 GDK_DPI_SCALE=1.2 CLUTTER_SCALE=1 wechat'
alias kitty='env GLFW_IM_MODULE=ibus kitty'
alias pserver='python3 -m http.server'


if test -n "$DESKTOP_SESSION"
    set -x (gnome-keyring-daemon --start | string split "=")
end

set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
# Fisher init
#if not functions -q fisher; eval (curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher); end
#fisher update
set --universal nvm_default_version lts
set --universal nvm_mirror https://npm.taobao.org/mirrors/node
nvm use lts default

