DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos/with-brew] Installing software with homebrew"
brew bundle install --verbose --file "$DOTFILES"/macos/Brewfile

echo "[.dotfiles/macos/with-brew] Pointing at the new openjdk"
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
