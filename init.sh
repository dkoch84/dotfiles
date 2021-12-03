#!/bin/bash
cp herbstluftwm/autostart ~/.config/herbstluftwm/
cp bash/.bashrc ~/
cp vim/.vimrc ~/
cp qutebrowser/config.py ~/.config/qutebrowser/
cp redshift/redshift.conf ~/.config/redshift
cp xorg/.Xresources ~/
cp ncmpcpp/config ~/.ncmpcpp/
cp mpd/mpd.conf ~/.config/mpd/
cp tint2/tint2rc ~/.config/tint2/
cp alacritty/alacritty.yml ~/.config/alacritty/

printf "dotfiles applied\n"
exit 0
