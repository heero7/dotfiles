# NVIM Configuration 9/27/25

This time I installed neovim by just curling application. This is a little
different because now I'm in a bit more control of the application and where
it lives.

1. i found the command to pull in neovim-macos-arm64 via curl.
2. wherever this was run, it just dumped the tar.gz then unpackaged it
3. it opens neovim immediately, but i saw that was just part of the command
4. so i had to 
    1. move neovim to some location where i knew it was, i chose .local so i didn't worry about
    permissions.
    2. i had to add it to my $PATH. I chose to add it to my .zshrc instead of etc/path
    3. now neovim works!

the version installed is actually the latest, but not the latest stable. 0.12
this version has its own package manager. no need for lazy?!

## switching between different setups
I just learned that you can actually just point your neovim to different setups. 
you can set the environment variable NVIM_APPNAME. whatever this is nvim ends up pointing
to in your .config folder.

```
NVIM_APPNAME=lazy_config
// if the environment variable NVIM_APPNAME=lazy_config

you can set an alias => alias lz="NVIM_APPNAME=lazy_config"
so if you run 'lz' in the terminal it will point to nvim in the folder
.config/lazy_config/

how cool is that!
```

- This setup uses `vim.pack` to manage plugins. Not lazy. It makes this super minimal!

## after/ 
Noted from TJ Devries, there is a way to do a per language config basis! So in after, there are files
labled with language_name.lua.
