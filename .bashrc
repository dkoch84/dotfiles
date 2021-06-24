#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIAS
# herbstluftwm
alias hout='killall herbstluftwm'
alias hc=herbstclient

# built-in's and replacements
alias ls='ls -h --group-directories-first --color=auto'
alias ex=exit
alias reboot='systemctl reboot -i'
alias rsmv='rsync -aP --remove-source-files'
alias rscp='rsync -aP'

# package management
alias yay='yay --ignore ttf-google-fonts-git'

# ssh
alias school='ssh -Y koch@lab.cs.uwp.edu'
alias server='ssh daniel@192.168.1.115 -p 3848'
alias pi='ssh daniel@192.168.1.110'
alias camera='ssh pi@192.168.1.139'

# proxy server
alias tunnel='ssh -D 8100 koch@lab.cs.uwp.edu'
alias proxybrowse='vivaldi-stable --proxy-server=socks://localhost:8100'
alias gitsocks='git -c http.proxy=socks5://localhost:8100'

# firebase
alias firebase-test='vivaldi-stable http://localhost:5000'

# filebot
alias frename='filebot -rename -non-strict -no-xattr'
alias filebot-tv='filebot -r -rename -non-strict -no-xattr /mnt/share1/staging/staging-tv/*'
alias filebot-movies='filebot -rename -non-strict -no-xattr /mnt/share1/staging/staging-movies/*'
alias tvshare='cd /mnt/share1/staging/staging-tv'
alias movieshare='cd /mnt/share1/staging/staging-movies'
alias share='cd /mnt/share1/staging'

# glances
alias glances='glances --theme-white --fs-free-space --hide-kernel-threads --process-short-name --disable-bold --disable-bg --enable-process-extended'

# alsamixer
alias alsa='alsamixer'

# ncmpcpp
alias ncmpcpp2='ncmpcpp -c ~/.ncmpcpp/config-noart'

# work
alias master='ssh dkoch@40.70.153.125'

# PROMPT
#PS1='[\u@\h \W]\$ '
source ~/.shell_prompt.sh

# ENVIRONMENTAL VARIABLES
export EDITOR='vim'
export ANDROID_HOME=/home/daniel/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export PATH="$HOME/scripts:$HOME/.node_modules/bin:$PATH"

PATH="/home/daniel/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/daniel/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/daniel/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/daniel/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/daniel/perl5"; export PERL_MM_OPT;
