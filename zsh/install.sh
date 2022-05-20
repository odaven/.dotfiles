SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "[.dotfiles/zsh] Changing zsh to default"
sudo chsh -s $(which zsh) $(whoami)

echo "[.dotfiles/zsh] Installing oh-my-zsh"
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

echo "[.dotfiles/zsh] Creating soft link $SCRIPTPATH/.zsh_aliases into home directory"
ln -sf $SCRIPTPATH/.zsh_aliases ~/.zsh_aliases

echo "[.dotfiles/zsh] Creating soft link $SCRIPTPATH/.zshrc into home directory"
ln -sf $SCRIPTPATH/.zshrc ~/.zshrc

echo "[.dotfiles/zsh] Move oh-my-zsh themes to custom folder"
cp $SCRIPTPATH/oh-my-zsh/j.zsh-theme ~/.oh-my-zsh/custom/themes/
cp $SCRIPTPATH/oh-my-zsh/j-all.zsh-theme ~/.oh-my-zsh/custom/themes/

echo "[.dotfiles/zsh] Restart to get the changes"
