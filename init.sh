#!/bin/bash
cp -r herbstluftwm ~/.config/
cp bash/.bashrc ~/
cp vim/.vimrc ~/
cp -r qutebrowser ~/.config/
cp -r redshift ~/.config/
cp xorg/.Xresources ~/
cp ncmpcpp/config ~/.ncmpcpp/
cp -r mpd ~/.config/
cp -r tint2 ~/.config/
cp -r alacritty ~/.config/
cp picom/* ~/.config/
cp -r rofi ~/.config/

printf "dotfiles applied\n"
exit 0
