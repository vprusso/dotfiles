#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '

# Set to superior editing mode
set -o vi

# keybinds
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

# config
export BROWSER="firefox"

# directories
export PROJECTS="$HOME/Projects"
export RESEARCH="$HOME/Projects/research"
export GITUSER="vprusso"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias v=nvim
alias vi=nvim

# ls
alias ls="ls --color=auto"
alias ll="ls -la"
alias la="ls -lathr"

# Python
# line count for Python.
alias pyloc='find . -name "*.py" ! -path "./venv/*" | xargs wc -l'
alias cv="python3 -m venv venv"
alias sv="source venv/bin/activate"
alias dv="deactivate"

# git
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gcb="git checkout -b"
alias gcmsg="git commit -m"
alias gm="git merge"
alias gp="git push"
alias gl="git pull"
alias gs="git status"
alias gco="git checkout"
alias gstall="git stash --all"
alias gstp="git stash pop"
alias lg="lazygit"
alias nb="jupyter notebook"

# finds all files recursively and sorts by last modification, ignore hidden files
alias last="find . -type f -not -path "*/\.*" -exec ls -lrt {} +"

# ricing
alias et="v ~/.config/awesome/themes/powerarrow/theme-personal.lua"
alias ett="v ~/.config/awesome/themes/powerarrow-dark/theme-personal.lua"
alias er="v ~/.config/awesome/rc.lua"
alias ez="v ~/.zshrc"
alias eb="v ~/.bashrc"
alias ev="cd ~/.config/nvim/ && v init.lua"
alias sz="source ~/.zshrc"
alias sbr="source ~/.bashrc"
alias s="startx"

alias t="tmux"
alias e="exit"
