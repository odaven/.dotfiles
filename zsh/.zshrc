# For enabling tmux in IDE's terminals
#if [[ -z $TMUX ]]; then
#    case "$TERMINAL_EMULATOR" in
#        "JetBrains-JediTerm") session_name="intellij" ;;
#        "vscode-terminal") session_name="vscode" ;;
#        *) session_name="bedrock" ;;
#    esac
#
#    tmux new-session -A -s "$session_name"
#fi

# HISTFILE is used by interactive shells only.
# Hence, we put it in .zshrc and don't export it.
HISTFILE="$XDG_STATE_HOME"/zsh/history

# Oh my zsh plugins
plugins=(git)

ZSH_THEME="j-all"
source $ZSH/oh-my-zsh.sh

[ -f "$ZDOTDIR"/aliases.zsh ] && source "$ZDOTDIR"/aliases.zsh

[ -f "$XDG_CONFIG_HOME"/fzf/fzf.zsh ] && source "$XDG_CONFIG_HOME"/fzf/fzf.zsh

# For FZF: Alt-C in Macos writes "ç". So I bind that character to show directories
# Functionality can be trigger with ESC-C too.
bindkey "ç" fzf-cd-widget

bindkey -s ^f "tmux-sessionizer\n"

[ -f "$ZDOTDIR_LOCAL"/.zshrc-local ] && source "$ZDOTDIR_LOCAL"/.zshrc-local
[ -f ~/.zshenv-private ] && source ~/.zshenv-private
