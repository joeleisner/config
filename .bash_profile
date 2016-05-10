# General
alias finder="open ."
alias .="open ."
alias ..="cd ../"
alias ...="cd ../.."
alias c="clear"

# Work
function dev() {
    if [ -z "$@" ]; then
        cd Documents/Development/
    else
        cd Documents/Development/$@
    fi
}
function dev-c() {
    if [ -z "$@" ]; then
        cd Documents/Development/Clients/
    else
        cd Documents/Development/Clients/$@
    fi
}
function dev-p() {
    if [ -z "$@" ]; then
        cd Documents/Development/Personal/
    else
        cd Documents/Development/Personal/$@
    fi
}
function dev-t() {
    if [ -z "$@" ]; then
        cd Documents/Development/Test/
    else
        cd Documents/Development/Test/$@
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
alias g-ic="git commit -m 'Initial commit'"
alias g-l="git log"
alias g-pl="git pull"
alias g-ps="git push"
alias g-puom="git push -u origin master"
alias g-rao="git remote add origin"
alias g-st="git status"

# Node
alias n-i="npm i"
alias n-ig="npm i -g"
alias n-in="npm init"
alias n-is="npm i $@ --save"
alias n-isd="npm i $@ --save-dev"
alias n-u="npm uninstall"
alias n-ug="npm uninstall -g"
alias n-us="npm uninstall $@ --save"
alias n-usd="npm uninstall $@ --save-dev"

# Homebrew
alias br="brew"
alias br-cu="brew cleanup"
alias br-d="brew doctor"
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

# Terminal Prompt
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0;0m\]"
PS1="\W$BLUE\$(parse_git_branch)$NO_COLOR: "

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
