#!/usr/bin/env zsh

# For FZF: Alt-C in Macos writes "ç". So I bind that character to show directories
# Functionality can be trigger with ESC-C too.
bindkey "ç" fzf-cd-widget

bindkey -s ^f "tmux-sessionizer\n"
