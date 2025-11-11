#!/usr/bin/env zsh

export ZDOTDIR="$HOME/.config/zsh"
export ZDOTDIR_LOCAL="$HOME/.config/zsh-local"
export ZDOTDIR_PRIVATE="$HOME/.config/zsh-private"

[[ -f "$ZDOTDIR_LOCAL/zshenv" ]] && source "$ZDOTDIR_LOCAL/zshenv"
[[ -f "$ZDOTDIR_PRIVATE/zshenv" ]] && source "$ZDOTDIR_PRIVATE/zshenv"
