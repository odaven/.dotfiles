#!/usr/bin/env zsh

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

function echo_red() {
  echo "${RED}$1${NC}"
}

function run_setup_list() {
  array=("$@")
  for i in "${array[@]}"
  do
    setup="$HOME"/.dotfiles/setup/"$i"
    if [ -f "$setup" ]; then
       $setup
    else
     echo_red "Didn't setup $setup"
    fi
  done
}

function run_setup_all() {
  for entry in "$HOME"/.dotfiles/setup/*
  do
    $entry
  done
}

function create_xdg_folders () {
  [ ! -d "$HOME"/.cache ] && mkdir "$HOME"/.cache
  [ ! -d "$HOME"/.config ] && mkdir "$HOME"/.config
  [ ! -d "$HOME"/.local ] && mkdir "$HOME"/.local
  [ ! -d "$HOME"/.local/share ] && mkdir "$HOME"/.local/share
  [ ! -d "$HOME"/.local/state ] && mkdir "$HOME"/.local/state
}
