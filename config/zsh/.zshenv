#!/usr/bin/env zsh

export ZDOTDIR="$HOME/.config/zsh"
export ZDOTDIR_LOCAL="$HOME/.config/zsh-local"
export ZDOTDIR_PRIVATE="$HOME/.config/zsh-private"

[[ -f "$ZDOTDIR_LOCAL/.zshenv-local" ]] && source "$ZDOTDIR_LOCAL/.zshenv-local"
[[ -f "$ZDOTDIR_PRIVATE/.zshenv-private" ]] && source "$ZDOTDIR_PRIVATE/.zshenv-private"
