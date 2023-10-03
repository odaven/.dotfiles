# XDG
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_BIN_HOME=~/.local/bin

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

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

# Node
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# Npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Nvm
export NVM_DIR="$XDG_DATA_HOME"/nvm

# Ripgrep
export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/config

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
