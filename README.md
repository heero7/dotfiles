# kmudy7's dotfiles 2026

This year aiming for a more minimal approach for less to keep track of.

## Highlights:
- use neovim's native plugin solution
- keep tmux minimal by setting up the "theme" by yourself
- changing the keymaps to make more "sense"
- switch terminals to ghostty
- swiching desktop to Linux over Windows (a.k.a more FOSS! unless it's dotnet)
- just approaching installs & development from a more curious angle
    - example: install neovim via curl and manually setting the path

## Requirements
- [ ] neovim 0.12 >=
- [ ] macOS or Linux OS

## Stow Commands to know
- create links
`stow -t $HOME .`
- update links (in case anything needs to be re-ran)
- undo symlinks, (something messed up) ❗️make sure to be in this repository's root dir❗️
`stow -D -t $HOME .`

## TODO's
- [ ] create install scripts for required packages
- [ ] add dotnet setup
- [ ] run in docker to check if the installation works
- [x] get stow to work
