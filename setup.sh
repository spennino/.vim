#!/bin/bash

echo -e "Installing .vimrc..."
ln -s ~/.vim/.vimrc ~/.vimrc

if [ "$?" -ne "0" ]; then
  read -p "~/.vimrc already exists. Would you like to overwrite it? [y/n] " prompt
  if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
  then
    rm ~/.vimrc;
    ln -s ~/.vim/.vimrc ~/.vimrc;
    echo -e "~/.vimrc replaced with ~/.vim/.vimrc";
  else
    exit;
  fi
fi
