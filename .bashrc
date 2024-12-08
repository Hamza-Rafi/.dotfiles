#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias grep='grep --color=always'
alias ip='ip --color=always'
alias less='less -R'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias l=ls
alias ll='ls -l'
alias la='ls -a'
# git binds
alias gi='git init'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias ga='git add'
alias cat=bat
alias ssh='kitten ssh'
PS1='[\u@\h \W]\$ '
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
eval "$(starship init bash)"

