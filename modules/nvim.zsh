source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  local repo="https://github.com/odaven/nvim.git"
  local src="$HOME/.dotfiles/config/nvim"

  rm -rf "$src"
  git clone "$repo" "$src"

  dot
}

clean() {
  rm -rf "$(data_dir)/nvim" "$(state_dir)/nvim" "$(cache_dir)/nvim" "$(config_dir)/nvim"
}

dev() {
  local src="$HOME/Dev/nvim"
  local dest="$(config_dir)/nvim"

  [[ -e $dest || -L $dest ]] && rm -rf "$dest"
  ln -sv "$src" "$dest"
}

dot() {
  "$HOME/.dotfiles/bin/link" "config/nvim" "$(config_dir)/nvim"
}
