source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "agents/coding.md" "$(config_dir)/copilot/copilot-instructions.md"
}
