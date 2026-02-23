source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/zsh" "$(config_dir)/zsh"

  rm -rf "$HOME/.config/oh-my-zsh/"

  export KEEP_ZSHRC='yes'
  export ZSH="$HOME/.config/oh-my-zsh"
  curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
  
  "$HOME/.dotfiles/bin/link" "config/zsh/.zshenv" "$HOME/.zshenv"
}
