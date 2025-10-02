#!/usr/bin/env zsh

# Loading the PATH
# This file should be sourced before the .zsh-local
# so we can be sure any PATH added locally has priority over the general one below

# Homebrew - Goes first so I can use 'brew --prefix'
export PATH="/opt/homebrew/bin:$PATH"

# Curl
if command -v brew &> /dev/null; then
    export PATH="$(brew --prefix curl)/bin:$PATH"
fi

# Go
export PATH="$GOBIN:$PATH"

# Npm
export PATH="$(npm config get prefix)/bin:$PATH"

# Rust
export PATH="$CARGO_HOME/bin:$PATH"
if command -v brew &> /dev/null; then
    export PATH="$(brew --prefix rustup)/bin:$PATH"
fi

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# .local/bin
export PATH="$XDG_BIN_HOME:$PATH"
