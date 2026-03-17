# Use emacs key bindings (Ctrl-A, Ctrl-E, etc.)
bindkey -e

# Edit command line in $EDITOR with Ctrl-X Ctrl-E
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# Shift+Tab to go backwards in completion menu
bindkey '^[[Z' reverse-menu-complete

# For FZF: Alt-C in Macos writes "ç". So I bind that character to show directories
# Functionality can be trigger with ESC-C too.
bindkey "ç" fzf-cd-widget

bindkey -s ^f "tmux-sessionizer\n"
