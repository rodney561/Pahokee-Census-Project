# This script will setup and install 
# necessarry packages on your macbook to run this project locally. 
# Author: Tedley Meralus 
 

export NOCOLOR='\033[0m'
export RED='\033[38;5;204m'
export ORANGE='\033[38;5;209m'
export YELLOW='\033[38;5;11m'
export LIGHTYELLOW='\033[38;5;222m'
export LIGHTGREEN='\033[38;5;193m'
export GREEN='\033[38;5;10m'
export CYAN='\033[38;5;49m'
export PINK='\033[38;5;212m'
export LIGHT='\033[38;5;225m'


# install homebrew
local brewexists=$(which brew)
if [[ $brewexists == *"not found"* ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "${CYAN}- ${YELLOW}brew ${NOCOLOR}: already installed"
  echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
fi

# install pip
local pipexists=$(which pip)
if [[ $pipexists == *"not found"* ]]; then
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py
else
  echo "${CYAN}- ${YELLOW}pip ${NOCOLOR}: already installed"
  echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
fi
  
local brewlist=$(brew list) 
# install ripgrep
 if [[ $brewlist == *"ripgrep"* ]]; then
    echo "${CYAN}- ${YELLOW}ripgrep ${NOCOLOR}: already installed"
    echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
else
    brew install ripgrep
fi

local brewlist=$(brew list) 
# install docker
 if [[ $brewlist == *"docker"* ]]; then
    echo "${CYAN}- ${YELLOW}docker ${NOCOLOR}: already installed"
    echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
else
    brew install docker
fi


local brewlist=$(brew list) 
# install gh
 if [[ $brewlist == *"gh"* ]]; then
    echo "${CYAN}- ${YELLOW}gh ${NOCOLOR}: already installed"
    echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
else
    brew install gh
fi


# install pyenv
if [[ $brewlist == *"pyenv"* ]]; then
     echo "${CYAN}- ${YELLOW}pyenv ${NOCOLOR}: already installed"
      echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
else
      brew install pyenv
fi 

# install npm
if [[ $brewlist == *"npm"* ]]; then
     echo "${CYAN}- ${YELLOW}npm ${NOCOLOR}: already installed"
      echo "${CYAN}-- ${GREEN}skipping...${NOCOLOR}"
else
      brew install npm
fi 
