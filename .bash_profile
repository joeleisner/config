# General
alias ~="cd ~/"
alias .="open ."
alias ..="cd ../"
alias ...="cd ../.."
alias c="clear"
alias finder="open ."

# Work
function dev() {
    if [ -z "$@" ]; then
        cd Documents/Development/
    else
        cd Documents/Development/$@
    fi
}
function dev-j() {
    if [ -z "$@" ]; then
        cd Documents/Development/Javascript/
    else
        cd Documents/Development/Javascript/$@
    fi
}
function dev-m() {
    if [ -z "$@" ]; then
        cd Documents/Development/Misc./
    else
        cd Documents/Development/Misc./$@
    fi
}
function dev-n() {
    if [ -z "$@" ]; then
        cd Documents/Development/Node/
    else
        cd Documents/Development/Node/$@
    fi
}
function dev-si() {
    if [ -z "$@" ]; then
        cd Documents/Development/Sites/
    else
        cd Documents/Development/Sites/$@
    fi
}
function dev-st() {
    if [ -z "$@" ]; then
        cd Documents/Development/Styling/
    else
        cd Documents/Development/Styling/$@
    fi
}
function dev-t() {
    if [ -z "$@" ]; then
        cd Documents/Development/Test/
    else
        cd Documents/Development/Test/$@
    fi
}
function dev-w() {
    if [ -z "$@" ]; then
        cd Documents/Development/WordPress/
    else
        cd Documents/Development/WordPress/$@
    fi
}

# Atom
alias a.="atom ."

# Git
alias g-a="git add"
alias g-b="git branch"
alias g-ch="git checkout"
alias g-cl="git clone"
alias g-cm="git commit -m"
alias g-i="git init"
alias g-ic="git add . && git commit -m 'Initial commit'"
alias g-l="git log"
alias g-pl="git pull"
alias g-ps="git push"
alias g-rao="git remote add origin"
alias g-st="git status"

# Node
alias n-i="npm i"
alias n-ig="npm i -g"
alias n-in="npm init"
alias n-is="npm i $@ --save"
alias n-isd="npm i $@ --save-dev"
alias n-od="npm outdated"
alias n-u="npm uninstall"
alias n-ud="npm update"
alias n-ug="npm uninstall -g"
alias n-us="npm uninstall $@ --save"
alias n-usd="npm uninstall $@ --save-dev"

# Homebrew
alias br="brew"
alias br-cu="brew cleanup"
alias br-doc="brew doctor"
alias br-i="brew install"
alias br-ls="brew list"
alias br-ln="brew link"
alias br-od="brew outdated"
alias br-s="brew search"
alias br-t="brew tap"
alias br-ud="brew update"
alias br-ug="brew upgrade"
alias br-ui="brew uninstall"
alias br-ul="brew unlink"
alias br-ut="brew untap"

# Terminal Prompt
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0;0m\]"
PS1="\W$BLUE\$(parse_git_branch)$NO_COLOR: "

# LS Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Path Exports
# Homebrew SBin
export PATH="/usr/local/sbin:$PATH"
# Homebrew Bin
export PATH="/usr/local/bin:$PATH"
# PHP
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
# Composer
export PATH="~/.composer/vendor/bin:$PATH"
# Node
export PATH="$HOME/.node/bin:$PATH"
