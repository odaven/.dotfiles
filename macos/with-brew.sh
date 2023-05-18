DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/macos/with-brew] Installing software with homebrew"
brew bundle install --verbose --no-lock --file "$DOTFILES"/macos/Brewfile

echo "[.dotfiles/macos/with-brew] Pointing at the new openjdk"
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

echo "[.dotfiles/macos/with-brew] Install latest node lts version with nvm"
mkdir -p "$HOME/.nvm"
nvm install --lts

