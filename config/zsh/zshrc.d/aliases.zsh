#!/usr/bin/env zsh

if command -v zoxide >/dev/null 2>&1; then
  alias cd='z'
fi

alias ls='ls -Fh --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -Al'

alias sqlite3='sqlite3 -init "$XDG_CONFIG_HOME/sqlite3/sqliterc"'

# Tools
alias n='nvim'
alias g='git'
alias d='docker'
alias lg='lazygit'
alias ld='lazydocker'

