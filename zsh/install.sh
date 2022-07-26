DOTFILES="$HOME/.dotfiles"

echo "[.dotfiles/zsh] Changing zsh to default"
sudo chsh -s $(which zsh) $(whoami)

echo "[.dotfiles/zsh] Installing oh-my-zsh"
rm -rf .oh-my-zsh/
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

echo "[.dotfiles/zsh] Creating soft link $DOTFILES/zsh/.zsh_aliases into home directory"
ln -sfv "$DOTFILES"/zsh/.zsh_aliases ~/.zsh_aliases

echo "[.dotfiles/zsh] Creating soft link $DOTFILES/zsh/.zshrc into home directory"
ln -sfv "$DOTFILES"/zsh/.zshrc ~/.zshrc

echo "[.dotfiles/zsh] Move oh-my-zsh themes to custom folder"
cp -v "$DOTFILES"/zsh/oh-my-zsh/j.zsh-theme ~/.oh-my-zsh/custom/themes/
cp -v "$DOTFILES"/zsh/oh-my-zsh/j-all.zsh-theme ~/.oh-my-zsh/custom/themes/

echo "[.dotfiles/zsh] Restart to get the changes"
