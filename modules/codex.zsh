source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "agents/coding.md" "$(config_dir)/codex/AGENTS.md"
}
