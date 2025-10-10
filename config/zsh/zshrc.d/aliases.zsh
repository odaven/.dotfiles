#!/usr/bin/env zsh

# Navigation
if command -v zoxide >/dev/null 2>&1; then
  alias cd='z'
fi
alias o="open ."

# List
alias cpwd='pwd | pbcopy'
alias ls='ls -Fh --color=auto'
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

# Editors
alias n='nvim'
idea() { open -na "IntelliJ IDEA.app" --args "$@"; }

# Notes
alias notes='n ~/Dev/notes/'

# Tmux
alias tb='tmux new-session -A -s bedrock'

# Tools
alias d='docker'
alias g='git'
alias ld='lazydocker'
alias lg='lazygit'
alias sqlite3='sqlite3 -init "$XDG_CONFIG_HOME/sqlite3/sqliterc"'

# Update/upgrade tools and environments
alias brew-up='brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor'
alias gh-extensions-up='gh extension upgrade gh-copilot'
alias rustup-up='rustup component add rust-analyzer && rustup update'

# System info
alias path='echo $PATH | tr ":" "\n"'
alias ports='lsof -i -P -n | grep LISTEN'

# Reload zsh config
alias zshrc-reload="source ~/.config/zsh/.zshrc"
