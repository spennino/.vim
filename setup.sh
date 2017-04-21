#!/bin/bash
CYAN='\033[1;36m'
PURPLE='\033[1;35m'
WHITE='\033[0;37m'
YELLOW='\033[1;33m'

echo -e "${PURPLE}Installing .vimrc...${YELLOW}"
ln -s ~/.vim/.vimrc ~/.vimrc

if [ "$?" -ne "0" ]; then
  echo -e "${PURPLE}~/.vimrc already exists, removing..."
  rm ~/.vimrc
  ln -s ~/.vim/.vimrc ~/.vimrc
fi
