export ZSH=$HOME/.oh-my-zsh

plugins=(git)
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias source="source ~/.zshrc"

# Deno (Node.js alternative) so you can run in terminal
. "/Users/kevin/.deno/env"
