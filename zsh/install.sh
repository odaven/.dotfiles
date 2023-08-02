DOTFILES="$HOME/.dotfiles"
XDG_CONFIG_HOME="$HOME/.config"


echo "[.dotfiles/zsh] Changing zsh to default"
sudo chsh -s $(which zsh) $(whoami)

echo "[.dotfiles/zsh] Installing oh-my-zsh"
rm -rf ~/.oh-my-zsh/
export KEEP_ZSHRC='yes'
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

echo "[.dotfiles/zsh] Creating soft link"
[ -d "$XDG_CONFIG_HOME"/zsh ] && rm -rf "$XDG_CONFIG_HOME"/zsh
ln -sfv "$DOTFILES"/zsh "$XDG_CONFIG_HOME"

echo "[.dotfiles/zsh] Creating soft link"
ln -sfv "$XDG_CONFIG_HOME"/zsh/.zshenv ~/.zshenv

echo "[.dotfiles/zsh] Move oh-my-zsh themes to custom folder"
cp -v "$XDG_CONFIG_HOME"/zsh/oh-my-zsh/themes/j.zsh-theme ~/.oh-my-zsh/custom/themes/
cp -v "$XDG_CONFIG_HOME"/zsh/oh-my-zsh/themes/j-all.zsh-theme ~/.oh-my-zsh/custom/themes/

echo "[.dotfiles/zsh] Restart to get the changes"
