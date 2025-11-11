# These must be in .zshrc (not .zshenv) because history is only
# initialized for interactive shells — .zshenv runs for *every*
# zsh process, including scripts, where history is not used.
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=10000          # Number of commands to keep in memory
export SAVEHIST=10000          # Number of commands to save on exit
