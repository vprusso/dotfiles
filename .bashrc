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
export GHREPOS="$PROJECTS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

# vim
alias v=nvim
alias vi=nvim

# cd
alias ..="cd .."
alias scripts="cd $SCRIPTS"
alias research='cd $RESEARCH'
alias dot='cd $GHREPOS/dotfiles'
alias projects='cd $PROJECTS'
alias c="clear"
alias icloud="cd \$ICLOUD"
# cd && ls
function cd {
    builtin cd "$@" && ls -F
}


# ls
alias ls="ls --color=auto"
alias ll="ls -la"
alias la="ls -lathr"

# Python
# line count for Python.
alias pyloc='find . -name "*.py" ! -path "./venv/*" | xargs wc -l'
alias pipu="pip install --upgrade pip"
# venv
alias cv="python3 -m venv venv"
alias sv="source venv/bin/activate"
alias dv="deactivate"

# Jupyter notebooks
alias nb="jupyter notebook"
# Notebook kernels
alias lk="jupyter kernelspec list"
function install_jupyter_kernel() {
    python -m ipykernel install --user --name="$1" --display-name="Python ($1)"
}
function uninstall_jupyter_kernel() {
    jupyter kernelspec uninstall "$1" -f
}

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

# Finds all files recursively and sorts by last modification, ignore hidden files.
alias last="find . -type f -not -path "*/\.*" -exec ls -lrt {} +"

# dotfiles.
alias ez="v ~/.zshrc"
alias eb="v ~/.bashrc"
alias ev="cd ~/.config/nvim/ && v init.lua"
alias sz="source ~/.zshrc"
alias sbr="source ~/.bashrc"

alias t="tmux"
alias e="exit"

# tox
alias toxl="tox -e lint ${LINT_ARGS}"
alias toxt="tox -e typing ${TYPING_ARGS}"
alias toxe="tox run -e examples"


