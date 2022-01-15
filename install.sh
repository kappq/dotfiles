#!/bin/bash

# Install all the necessary packages
echo "[*] Installing dependencies..."

sudo pacman -S zsh alacritty discord i3-gaps i3lock i3status neovim nodejs picom rofi thunar zathura zathura-pdf-mupdf ttf-dejavu
yay -S betterdiscordctl cava visual-studio-code-bin polybar spicetify-cli spotify 
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
betterdiscordctl install
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Install fonts
echo "[*] Installing fonts..."

DIR=$(pwd)
FDIR="$HOME/.local/share/fonts"

if [[ -d "$FDIR" ]]; then
	cp -rf $DIR/fonts/* "$FDIR"
else
	mkdir -p "$FDIR"
	cp -rf $DIR/fonts/* "$FDIR"
fi

# Create the $HOME/.config directory if it doesn't exist
mkdir -p $HOME/.config

# Copy all the config files
echo "[*] Copying configuration files..."

cp -r .zshrc $HOME/.zshrc
cp -r alacritty $HOME/.config
cp -r BetterDiscord $HOME/.config
cp -r cava $HOME/.config
cp -r Code $HOME/.config
cp -r i3 $HOME/.config
cp -r nvim $HOME/.config
cp -r picom $HOME/.config
cp -r polybar $HOME/.config
cp -r rofi $HOME/.config
cp -r spicetify $HOME/.config
cp -r starship.toml $HOME/.config
cp -r Thunar $HOME/.config
cp -r zathura $HOME/.config

# Install Vim plugins
vim +PluginInstall +qall

# Prompt for reboot
echo "[*] Installation finished."

echo -n "Do you want to reboot? [Y/n] "
read YN

if [ $YN = "Y" ] || [ $YN = "y" ]; then
	reboot
fi
