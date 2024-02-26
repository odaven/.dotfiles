#!/usr/bin/env zsh

for config_file in "$ZDOTDIR"/lib/*.zsh; do
  source "$config_file"
done
