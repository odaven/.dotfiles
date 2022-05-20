SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "[.dotfiles/macos/with-brew] Installing software with homebrew"
brew bundle install --file $SCRIPTPATH/Brewfile

echo "[.dotfiles/macos/with-brew] Pointing at the new openjdk"
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
