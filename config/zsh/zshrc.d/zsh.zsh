# Options
setopt AUTO_CD                # cd by typing directory name
setopt AUTO_PUSHD             # push directories to the stack
setopt PUSHD_IGNORE_DUPS      # no duplicates in the dir stack

# Completion system
autoload -Uz compinit && compinit -d "$ZSH_COMPDUMP"

# Navigate completions with arrow keys / tab
zstyle ':completion:*' menu select

# Case-insensitive and partial matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Group completions by category
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

# Colors in completion menu (uses LS_COLORS)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Complete . and .. directories
zstyle ':completion:*' special-dirs true

# Cache expensive completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
