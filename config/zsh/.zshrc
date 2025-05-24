#!/usr/bin/env zsh

for config_file in "$ZDOTDIR/zshrc.d"/*.zsh; do
  [ -f "$config_file" ] && source "$config_file"
done
