#!/usr/bin/env zsh

# Navigation
if command -v zoxide >/dev/null 2>&1; then
  alias cd='z'
fi
alias o="open ."

# File operations
alias cpwd='pwd | pbcopy'
alias ls='ls -Fh --color=auto'
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

# Editors
alias e="nvim"
alias n='nvim'
idea() { open -na "IntelliJ IDEA.app" --args "$@"; }

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

# Backup a file or directory
bak() {
  cp -R "$1" "$1.bak"
}

# Create /tmp folder and cd into it
cd-new-tmp() {
  cd "$(mktemp -d "/tmp/${1:-tmp}.XXX")"
}

# Quickly serve current directory over HTTP (Python 3)
serve() { 
  python3 -m http.server "${1:-8000}"; 
}
