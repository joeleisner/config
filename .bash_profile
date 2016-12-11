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
function dev-css() {
    if [ -z "$@" ]; then
        cd Documents/Development/CSS/
    else
        cd Documents/Development/CSS/$@
    fi
}
function dev-js() {
    if [ -z "$@" ]; then
        cd Documents/Development/JS/
    else
        cd Documents/Development/JS/$@
    fi
}
function dev-misc() {
    if [ -z "$@" ]; then
        cd Documents/Development/Miscellaneous/
    else
        cd Documents/Development/Miscellaneous/$@
    fi
}
function dev-php() {
    if [ -z "$@" ]; then
        cd Documents/Development/PHP/
    else
        cd Documents/Development/PHP/$@
    fi
}
function dev-sites() {
    if [ -z "$@" ]; then
        cd Documents/Development/Sites/
    else
        cd Documents/Development/Sites/$@
    fi
}
function dev-temp() {
    if [ -z "$@" ]; then
        cd Documents/Development/Temporary/
    else
        cd Documents/Development/Temporary/$@
    fi
}
function dev-term() {
    if [ -z "$@" ]; then
        cd Documents/Development/Terminal/
    else
        cd Documents/Development/Terminal/$@
    fi
}
function dev-work() {
    if [ -z "$@" ]; then
        cd Documents/Development/Work/
    else
        cd Documents/Development/Work/$@
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

# Node
alias n-i="npm i"
alias n-ig="npm i -g"
alias n-in="npm init"
alias n-is="npm i $@ --save"
alias n-isd="npm i $@ --save-dev"
alias n-ls="npm ls --depth=0"
alias n-od="npm outdated"
alias n-u="npm uninstall"
alias n-ud="npm update"
alias n-uig="npm uninstall -g"
alias n-uis="npm uninstall $@ --save"
alias n-uisd="npm uninstall $@ --save-dev"

# Yarn
alias y="yarn"
alias y-a="yarn add"
alias y-ad="yarn add $@ -D"
alias y-ag="yarn global add $@"
alias y-ao="yarn add $@ -O"
alias y-ap="yarn add $@ -P"
alias y-i="yarn install"
alias y-in="yarn init"
alias y-li="yarn login"
alias y-lo="yarn logout"
alias y-ls="yarn ls --depth=0"
alias y-o="yarn outdated"
alias y-p="yarn publish"
alias y-r="yarn remove"
alias y-rg="yarn global remove"
alias y-run="yarn run"
alias y-su="yarn self-update"
alias y-ug="yarn upgrade"
alias y-v="yarn version"

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
# Homebrew
SBIN="/usr/local/sbin"
BIN="/usr/local/bin"
# Composer
COMPOSER="~/.composer/vendor/bin"
# Path
PATH="$SBIN:$BIN:$COMPOSER:$PATH"
export PATH
