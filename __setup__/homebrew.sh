#!/usr/bin/env bash

set -eu

echo 'setup homebrew'

readonly LIBS=`cat <<EOF
cabextract
charmbracelet/tap/freeze
eza
fzf
neovim
rbenv
sheldon
starship
trash
tree
xdg-ninja
zsh-completions
EOF`

$BREW_COMMAND install $LIBS

readonly CASK_LIBS=`cat <<EOF
alfred
discord
google-chrome
microsoft-teams
typora
visual-studio-code
xcodes
zoom
EOF`

$BREW_COMMAND install --cask $CASK_LIBS

