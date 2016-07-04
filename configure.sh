#!/bin/bash

DOTFILES_HOME=`pwd`

echo "Installing dotfiles from ${DOTFILES_HOME}"

# Helper functions
command_exists () {
    type "$1" &> /dev/null ;
}

error () {
    (>&2 echo "$1")
}

if ! command_exists curl ; then
    echo "Installing curl..."
    sudo apt-get install -y curl
fi

if ! command_exists git ; then
    echo "Installing git..."
    sudo apt-get install -y git
fi

if ! command_exists zsh ; then
    echo "Installing zsh..."
    sudo apt-get install -y zsh
fi

echo "Installing oh-my-zsh...(please exit zsh when installation is done!)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &>/dev/null

if ! command_exists nvim ; then
    echo "Installing neovim (and dependencies)..."
    sudo apt-get install -y software-properties-common &>/dev/null
    sudo apt-get install -y python-software-properties &>/dev/null
    sudo apt-get install -y python2 python3 python2-pip python3 pip &>/dev/null
    sudo python2 -m pip install neovim
    sudo python3 -m pip install neovim
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install -y neovim
fi

if ! command_exists xclip ; then
    echo "Installing xclip..."
    sudo apt-get install -y xclip
fi


echo "Creating symlinks for configuration files..."
mkdir ~/.config &>/dev/null
ln -s ${DOTFILES_HOME}/nvim ${HOME}/.config/nvim
ln -s ${DOTFILES_HOME}/.tmux.conf ${HOME}/.tmux.conf
ln -s ${DOTFILES_HOME}/.zshrc ${HOME}/.zshrc
ln -s ${DOTFILES_HOME}/.gitconfig ${HOME}/.gitconfig
ln -s ${DOTFILES_HOME}/.vimperatorrc ${HOME}/.vimperatorrc
