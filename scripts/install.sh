#!/bin/bash
set -e

sudo pacman -S --needed git stow
git clone https://github.com/youruser/dotfiles.git ~/dotfiles || true
cd ~/dotfiles
git pull
stow -R home
