# kmudy7's dotfiles

Uses GNU Stow to keep all the symlinks.

`brew install stow` ⬅️  for OSX
`sudo apt install stow` ⬅️  for Ubuntu (WSL2)

## WSL vs. OSX Configuration
I'm creating this as a git repository that can be used for both WSL and OSX. So this
will most likely live in a directory called 'Code'. This is problematic because GNU Stow
needs the directory to be in wherever it needs its files to be. Instead, I have .stowrc
that can be used per machine that can find the new `--target` directory.

Create a file called `.stowrc`
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
1. Navigate to the root directory
2. Run `stow .`
3. Check that the files are symlink'ed in the correct directories

## Reference
[A Quick Tutorial of dotfiles & GNU Stow](https://www.youtube.com/watch?v=y6XCebnB9gs)

### Configurations

- nvim 
- tmux
- alacritty
    - to install the themes, go to the alacritty directory and run
    - `git clone git@github.com:alacritty/alacritty-theme.git themes`

*I recently switched from iterm2 to Alacritty. I had issues with the colors. Don't forget
to restart tmux other wise the config won't pick up!*
