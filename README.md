# kmudy7's dotfiles

Uses GNU Stow to keep all the symlinks.

`brew install stow` ⬅️  for OSX
`sudo apt install stow` ⬅️  for Ubuntu (WSL2)
🤷🏿‍♂️ no option for Windows. Will need a script for this!

## WSL vs. OSX Configuration
I'm creating this as a git repository that can be used for both WSL and OSX. So this
will most likely live in a directory called 'Code'. This is problematic because GNU Stow
needs the directory to be in wherever it needs its files to be. Instead, I have .stowrc
that can be used per machine that can find the new `--target` directory.

Create a file called `.stowrc`, then point to the "Home" Directory for the PC
❗️Todo: Can we create a template we can just copy and paste. (i.e. .stowrc.template)❗️

<u>OSX</u>
```
--target=/Users/{userName}
```

<u>Linux (WSL2)</u>
```
--target=/usr/local/{userName}
```

## Updating the dotfiles
1. Navigate to the root directory of this repository
2. Run `stow .`
3. Check that the files are symlink'ed in the correct directories

## Reference
[A Quick Tutorial of dotfiles & GNU Stow](https://www.youtube.com/watch?v=y6XCebnB9gs)

### Configurations

- Neovim
    - nvim
    - ideavimrc (for Vim in Rider)
    - settings.json (for VS Code)
- tmux.conf (tmux config)
- .zshrc (zsh config)
- Terminal
    - wezterm.lua (wezterm configuration)

### Next!
- [ ] create an install script
    - [ ] install neovim
    - [ ] install stow
    - [ ] install brew (OSX)
    - [ ] install tmux
    - [ ] install zsh
