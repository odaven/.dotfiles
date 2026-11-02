#!/usr/bin/env zsh

source "$HOME/.dotfiles/config/zsh/env.zsh"

[[ -f "$ZDOTDIR_LOCAL/zshenv" ]] && source "$ZDOTDIR_LOCAL/zshenv"
[[ -f "$ZDOTDIR_PRIVATE/zshenv" ]] && source "$ZDOTDIR_PRIVATE/zshenv"
