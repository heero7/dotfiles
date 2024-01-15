#!/usr/bin bash

# Create necessary directories
if [ -d "${HOME}/.config" ]
then
    echo "[Setup] .config directory already exists"
else
    mkdir "${HOME}/.config" 
    echo "[Setup] Created .config directory in ${HOME}"
fi

# This can be installed for Linux and OSX (sorry Windows)
# Will prompt for your password.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle install --file=./Brewfile

echo "Linking git configuration"
ln -s git/.gitconfig ~/.gitconfig
echo "Done linking git configuration!"

echo "Linking zsh configuration..."
ln -s zsh/.zshrc ~/.zshrc
echo "Done linking zsh configuration!"

echo "Linking nvim configuration..."
ln -s nvim/ ~/.config/nvim
echo "Done linking nvim configuration!"

echo "Linking tmux configuration..."
if [ -d "${HOME}/.tmux" ]
then
    echo "[tmux] .tmux directory already exists"
else
    mkdir "${HOME}/.tmux" 
    echo "[tmux] Created .tmux directory in ${HOME}"
fi
ln -s tmux/.tmux.conf ~/.tmux.conf
ln -s tmux/.tmux/plugins ~/.tmux/plugins
echo "Done linking tmux configuration!"

# OSX Specific Configuration (i3 Replacement [yabai + skhd])
if [[ "$OSTYPE" == "darwin"* ]]; 
then
    echo "🍎 OSX Detected.. doing install for OSX.."

    echo "Linking skhd configuration..."
    if [ -d "${HOME}/.config/skhd" ]
    then
        echo "[skhd] skhd directory already exists"
    else
        mkdir "${HOME}/.config/skhd" 
        echo "[skhd] Created skhd directory in ${HOME}"
    fi
    ln -s skhd/skhdrc ~/.config/skhd/skhdrc
    echo "Done linking skhd configuration!"

    echo "Linking yabai configuration..."
    if [ -d "${HOME}/.config/yabai" ]
    then
        echo "[yabai] yabai directory already exists"
    else
        mkdir "${HOME}/.config/yabai" 
        echo "[yabai] Created yabai directory in ${HOME}"
    fi
    ln -s yabai/yabairc ~/.config/yabai/yabairc
    echo "Done linking yabai configuration!"
fi

echo "Linking finished.. resatarting shell.."
source ~/.zshrc
echo "Installation completed!"
