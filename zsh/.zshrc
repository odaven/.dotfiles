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
plugins=(git mvn)

ZSH_THEME="j-all"
source $ZSH/oh-my-zsh.sh

[ -f "$ZDOTDIR"/aliases.zsh ] && source "$ZDOTDIR"/aliases.zsh

[ -f ~/.zshenv-local ] && source ~/.zshenv-local

[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
