#!/usr/bin/env bash

set -eu

cd $(dirname "$0")

echo 'setup homebrew'

if ! command -v brew >/dev/null
then
  echo 'homebrew not found, try install homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

/opt/homebrew/bin/brew bundle --file=./.Brewfile
