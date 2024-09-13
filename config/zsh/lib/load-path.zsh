#!/usr/bin/env zsh

# Loading the PATH
# This file should be sourced before the .zsh-local
# so we can be sure any PATH added locally has priority over the general one below

# Curl
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"

# Go
export PATH="$GOBIN:$PATH"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Rust
export PATH="$CARGO_HOME/bin:$PATH"

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# .local/bin
export PATH="$XDG_BIN_HOME:$PATH"
