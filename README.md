# Dotfiles 

Holds all of my dotfiles for working in a Linux / OSX environment (sorry Windows maybe next time). I'll mess around with
the setup from time to time, but everything should be exactly where it needs to be. The `install.sh` should take care
of everything and where it needs to go. This setup doesn't use [GNU Stow](https://www.gnu.org/software/stow/), I have not
found a reason to need to use it yet. So I am using symlinks to link the files. Each folder denotes a program. In each folder there are my settings.

## ZSH
Settings for zsh, default on OSX. TODO: Necessary on Linux?

## Starship
Terminal prompt customizer

## Git
Git settings

## Neovim
<u>Package Manager:</u> Lazy Vim

### Plugins 🔌
- Treesitter: used for text syntax highlighting
- Neo Tree: allows a file explorer
- Telescope: fuzzy finder for files
- LSP
    - mason: installs the lsp for a language
    - mason lsp config: bridges the gap between mason and nvim-lspconfig
    - nvim-lspconfig: configurations for lsps
- None-LS: ---
- Completions: ---
- Lualine: fancy status line (insert mode, file name, line data, etc)
- Color Scheme Options: 
    - Tokyo Night
    - Catppuccin

## Tmux
Terminal mutliplexer

## Yabai
- When installing Yabai, you'll need to start services run the command `yabai --start-service`
- Then make sure to allow it to run in the background
- [Full i3 replacement](https://cbrgm.net/post/2021-05-5-setup-macos/)

## skhd
Hot keys and configurations for OSX

# Notes
- [Tmux] Get an error when adding folders from tmux/.tmux/plugins. These are 
repositories. Does installing them this way work?
