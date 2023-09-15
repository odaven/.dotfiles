# XDG
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_BIN_HOME=~/.local/bin

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# Node
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node/node_repl_history
[ ! -d "$XDG_DATA_HOME"/node ] && mkdir -p "$XDG_DATA_HOME"/node

# Npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Nvm
export NVM_DIR="$XDG_DATA_HOME"/nvm

# Rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# zsh configuration files
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
export ZSH_CUSTOM="$ZDOTDIR"/oh-my-zsh/custom
[ ! -d "$XDG_STATE_HOME"/zsh ] && mkdir -p "$XDG_STATE_HOME"/zsh
[ ! -d "$XDG_CACHE_HOME"/zsh ] && mkdir -p "$XDG_CACHE_HOME"/zsh

############ PATH ############

# .local/bin
export PATH="$PATH:$XDG_BIN_HOME"

# Rust
export PATH="$PATH:$CARGO_HOME/bin"

# Snap when in raspberry-pi
export PATH="$PATH:/snap/bin"
