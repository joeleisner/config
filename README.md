# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, PHP, Laravel, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name & email |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load up the Material theme from <https://github.com/joeleisner/material-terminal>

### 3. Setup Homebrew

- Paste the following command in the terminal: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### 4. Setup Git

- Install git via Homebrew: `brew install git`

### 5. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 6. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.3`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.3`.

### 7. Setup PHP, Composer & Laravel

- Install php (5.6.X) via Homebrew: `brew install php56`
- Install composer via Homebrew: `brew install composer`
- Download the Laravel installer via Composer: `composer global require "laravel/installer"`

### 6. Additional dependencies

- Install Node.js via Homebrew: `brew install node`.
- Install Sass: `gem install sass`.

### 7. Setup Atom

- Enable `atom` Terminal commands: from Atom.app, open the Atom menu and select *Install Shell Commands*
- Install favorite packages
  - [Emmet](https://atom.io/packages/emmet)
  - [File Icons](https://atom.io/packages/file-icons)
  - [Highlight Selected](https://atom.io/packages/highlight-selected)
  - [Javascript Snippets](https://atom.io/packages/javascript-snippets)
  - [Language Blade](https://atom.io/packages/language-blade)
  - [Linter](https://atom.io/packages/linter)
  - [Linter PHP Lint](https://atom.io/packages/linter-phplint)
  - [Linter ES Lint](https://atom.io/packages/linter-phplint)
  - [Pigments](https://atom.io/packages/pigments)

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
