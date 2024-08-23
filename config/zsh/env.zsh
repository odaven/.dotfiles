#!/usr/bin/env zsh

# XDG
export XDG_BIN_HOME="$HOME"/.local/bin
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# Editor
export EDITOR="nvim"

# Fzf
export FZF_DEFAULT_COMMAND="fd"
export FZF_DEFAULT_OPTS="
  --info inline
  --prompt 'All > '
  --header '? Show preview'
  --layout=reverse
  --preview 'bat --color=always --style=numbers,changes {} 2> /dev/null || tree -C {}'
  --preview-window right:50%:hidden:wrap
  --bind '?:toggle-preview'
  "

export FZF_ALT_C_COMMAND="fd --type directory"
export FZF_ALT_C_OPTS="
  --prompt 'Folders > '
  "

export FZF_CTRL_R_OPTS="
  --prompt 'History > '
  --header 'CTRL-Y Paste to clipboard. ? Show preview'
  --preview 'echo {}'
  --preview-window down:3:hidden:wrap
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  "

# Go
export GOPATH="$XDG_DATA_HOME"/go
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME"/go-build
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

# Node
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# Npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Ripgrep
export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/config

# Rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# SQLite
export SQLITE_HISTORY="$XDG_DATA_HOME"/sqlite_history

# zsh configuration files
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export ZSH="$XDG_CONFIG_HOME"/oh-my-zsh
export ZSH_COMPDUMP="$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
export ZSH_CUSTOM="$ZDOTDIR"/oh-my-zsh/custom
export SHELL_SESSIONS_DISABLE=1
[ ! -d "$XDG_STATE_HOME"/zsh ] && mkdir -p "$XDG_STATE_HOME"/zsh
[ ! -d "$XDG_CACHE_HOME"/zsh ] && mkdir -p "$XDG_CACHE_HOME"/zsh

############ PATH ############

# .local/bin
export PATH="$XDG_BIN_HOME:$PATH"

# Go
export PATH="$GOBIN:$PATH"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Rust
export PATH="$CARGO_HOME/bin:$PATH"

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
