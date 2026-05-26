# These must be in .zshrc (not .zshenv) because history is only
# initialized for interactive shells — .zshenv runs for *every*
# zsh process, including scripts, where history is not used.
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=20000          # Keep more in memory than on disk to allow dedup room
export SAVEHIST=10000          # Number of commands to save on exit

setopt EXTENDED_HISTORY        # Save timestamp and duration with each entry
setopt HIST_EXPIRE_DUPS_FIRST  # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS        # Don't record consecutive duplicate commands
setopt HIST_IGNORE_SPACE       # Don't record commands prefixed with a space
setopt HIST_VERIFY             # Show history expansion before executing
setopt SHARE_HISTORY           # Share history across all sessions in real time
