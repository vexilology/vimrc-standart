#!/bin/bash

if [ $(which apt) ]; then
  echo "Checking updates and install git."
  sudo apt update && sudo apt install git
  echo "Cloning Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo -e "\e[3mOk...\e[0m"
  echo "Launch vim and run :PluginInstall or :h vundle for docs."
else
  echo "Installing for only apt packages."
fi

echo -n "Installing xmonad + dmenu? (y/n)"
read item
case "$item" in
  y | Y)
    if [ $(which apt) ]; then
      echo "Installing packages..."
      sudo apt install ghc libx11-dev xmonad dmenu cabal-install
      sudo cabal install xmonad-extras
      sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
      cp layout_switch.sh /home/$USER/.config
      cp get_volume.sh /home/$USER/.config
      echo -e "\e[3mOk...\e[0m"
      echo "Everything is installed."
    else
      echo "Installing for only apt packages."
    fi
    ;;
  n | N)
    echo "Exit now."
    ;;
  *)
    echo "Exit now."
    ;;
esac
