#!/usr/bin/env zsh

export ZDOTDIR=~/.config/zsh
export ZDOTDIR_LOCAL=~/.config/zsh-local

source "$ZDOTDIR"/env.zsh
[ -f "$ZDOTDIR_LOCAL"/.zshenv-local ] && source "$ZDOTDIR_LOCAL"/.zshenv-local
