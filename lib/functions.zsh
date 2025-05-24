#!/usr/bin/env zsh

source "$HOME/.dotfiles/config/zsh/zshrc.d/00-env.zsh"

# Colours for prompts
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
NC='\033[0m' # No Color

echo_red() {
  echo "${RED}$1${NC}"
}

# Create all XDG base directories if they don't exist
create_xdg_folders() {
  mkdir -p $XDG_BIN_HOME $XDG_CACHE_HOME $XDG_CONFIG_HOME $XDG_DATA_HOME $XDG_STATE_HOME
}

# Remove destination if it exists, then create symlink
link_config() {
  local src=$1
  local dest=$2
  [[ -e $dest || -L $dest ]] && rm -rf $dest
  ln -sv $src $dest
}