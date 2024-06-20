#!/usr/bin/env zsh

export ZDOTDIR=~/.config/zsh
export ZDOTDIR_LOCAL=~/.config/zsh-local
export ZDOTDIR_PRIVATE=~/.config/zsh-private

source "$ZDOTDIR"/env.zsh
[ -f "$ZDOTDIR_LOCAL"/.zshenv-local ] && source "$ZDOTDIR_LOCAL"/.zshenv-local
[ -f "$ZDOTDIR_PRIVATE"/.zshenv-private ] && source "$ZDOTDIR_PRIVATE"/.zshenv-private
