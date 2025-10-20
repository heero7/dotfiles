# !/usr/bin/env bash
# Installs all the necessary tools on the machine!

USE_SUDO=true
OS="$(uname -s)"

install_package() {
    PACKAGE=$1

    echo "Check for existing $PACKAGE install."

    if command -v "$PACKAGE" >/dev/null 2>&1; then
	echo "$PACKAGE already installed"
	return
    fi

    if [ "$OS" = "Darwin" ]; then
	echo "Installing $PACKAGE via Homebrew.."
	brew install "$PACKAGE"
    elif [ "$OS" = "Linux" ]; then
	echo "Installing $PACKAGE via apt.."
	$SUDO apt update
	$SUDO apt install -y "$PACKAGE"
    fi
}



if [ "$OS" = "Darwin" ]; then
    # check if brew is installed
    if ! command -v brew >/dev/null 2>&1; then
	echo "Homebrew not found! Attempting to install..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
	echo "Homebrew already installed!"
    fi
elif [ "$OS" = "Linux" ]; then
    echo "Linux OS detected!"
    if [ "$(id -u)" -ne 0 ]; then
	echo "[Warning] You don't have sudo."
	SUDO="sudo"
    else
	echo "Continuing as sudo."
	SUDO=""
    fi
    # install zsh if not present
    if ! command -v zsh >/dev/null 2>&1; then
	echo "zsh not found. Installing.."
	$SUDO apt update
	$SUDO apt install -y zsh
    else 
	echo "zsh is already installed."
    fi
    echo "Installing packages..."
    install_package git
    install_package curl
    install_package neovim
    install_package tmux
    install_package stow

    echo "Installing oh-my-zsh"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    echo "Installing TPM for tmux"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    echo "Creating code directory"
    mkdir "~/Code"

    echo "Getting dotfiles"
    (
	cd "$HOME/Code"
	git clone git@github.com:heero7/dotfiles.git ~/Code/dotfiles
    )

    echo "Run stow"
    (
	cd "$HOME/Code/dotfiles" || { echo "Failed to cd to dotfiles dir"; exit 1; }
	stow -t $HOME .
    )
else
    echo "Unknown OS"
fi


