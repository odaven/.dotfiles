source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/zsh" "$(config_dir)/zsh"
  "$HOME/.dotfiles/bin/link" "config/zsh/.zshenv" "$HOME/.zshenv"
}
