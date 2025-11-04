#!/usr/bin/env zsh

# XDG
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# Editor
export EDITOR="nvim"

# Fzf
export FZF_DEFAULT_COMMAND="fd"
export FZF_DEFAULT_OPTS=$'
  --info inline
  --layout=reverse
  --preview \'bat --color=always --style=numbers,changes {} 2> /dev/null || tree -C {}\'
  --preview-window right:50%:hidden:wrap
  --bind \'?:toggle-preview\''
export FZF_ALT_C_COMMAND="fd --type directory"
export FZF_ALT_C_OPTS=$'
  --prompt \'Folders > \'
  --header \'? Show preview\''
export FZF_CTRL_R_OPTS=$'
  --prompt \'History > \'
  --header \'CTRL-Y Paste to clipboard. ? Show preview\'
  --preview \'echo {}\'
  --preview-window down:3:hidden:wrap
  --bind \'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort\''

# Go
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

# Less
[ -d "$XDG_STATE_HOME/less" ] || mkdir -p "$XDG_STATE_HOME/less"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# Neovim as manpager
export MANPAGER="nvim +Man!"

# Node
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

# Npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Python
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python
PYTHON_STATE_HOME="$XDG_STATE_HOME/python"
export PYTHON_HISTORY="$PYTHON_STATE_HOME/history"
[ -d "$PYTHONPYCACHEPREFIX" ] || mkdir -p "$PYTHONPYCACHEPREFIX"
[ -d "$PYTHONUSERBASE" ] || mkdir -p "$PYTHONUSERBASE"
[ -d "$PYTHON_STATE_HOME" ] || mkdir -p "$PYTHON_STATE_HOME"

# Ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

# Rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# SQLite
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"

# Starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Zoxide
export _ZO_DATA_DIR="$XDG_DATA_HOME/zoxide"

# zsh configuration files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
export ZSH_CUSTOM="$ZDOTDIR/oh-my-zsh/custom"
export SHELL_SESSIONS_DISABLE=1


