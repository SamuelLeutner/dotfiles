# Git Aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -m'
alias gcma='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gsb='git status -sb'
alias glog='git log --oneline --decorate --graph'

# Docker Aliases
alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias drm='docker rm'
alias drmi='docker rmi'

# Zoxide Quick Navigation
alias cd='z'

alias ls='eza --icons --all'
alias cat='bat --style=full --paging=always'

starship init fish | source