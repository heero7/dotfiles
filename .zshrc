export ZSH=$HOME/.oh-my-zsh

plugins=(git)
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias source="source ~/.zshrc"
