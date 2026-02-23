source "$HOME/.dotfiles/lib/functions.zsh"

config() {
  "$HOME/.dotfiles/bin/link" "config/vim/vimrc" "$HOME/.vimrc"

  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      
  vim +PlugInstall +qall
}
