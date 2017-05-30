#!/bin/bash
CYAN='\033[1;36m'
PURPLE='\033[1;35m'
WHITE='\033[0;37m'
YELLOW='\033[1;33m'
OS=$(uname)

echo -e "${PURPLE}Installing .vimrc...${YELLOW}"
ln -s ~/.vim/.vimrc ~/.vimrc

if [ "$?" -ne "0" ]; then
  read -p "${PURPLE}~/.vimrc already exists. Would you like to overwrite it? [y/n] " prompt
  if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
  then
    rm ~/.vimrc;
    ln -s ~/.vim/.vimrc ~/.vimrc;
    echo -e "~/.vimrc replaced with ~/.vim/.vimrc";
  else
    exit;
  fi
fi

echo -e "${PURPLE}Installing silver searcher with brew...${WHITE}"
brew install the_silver_searcher

echo -e "${PURPLE}Installing submodules...${WHITE}"
cd ~/.vim
git submodule update --init --recursive > /dev/null

echo -e "${CYAN}Success!${WHITE}"
