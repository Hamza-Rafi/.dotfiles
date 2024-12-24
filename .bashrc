#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza --icons=always --header'
alias tree='ls -T'
alias grep='grep --color=always'
alias ip='ip --color=always'
alias less='less -R'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dotfileslazy='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias lazyvim='NVIM_APPNAME=lazynvim nvim'

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

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

eval "$(zoxide init bash --cmd cd)"

# pnpm
export PNPM_HOME="/home/hamza/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:/home/hamza/.cargo/bin

export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
