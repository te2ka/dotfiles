#!/usr/bin/env bash

set -eu

readonly CONFIG_DIR="$(dirname "$0")"

. "${CONFIG_DIR}/zsh/.zshenv"

mkdir -p "${XDG_DATA_HOME}" "${XDG_CONFIG_HOME}" "${XDG_STATE_HOME}" "${XDG_CACHE_HOME}"

if ! command -v brew >/dev/null
then
  echo 'homebrew not found, try install homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export BREW_COMMAND='/opt/homebrew/bin/brew'

for setup_script in $(find "${CONFIG_DIR}/__setup__" -type f -name '*.sh')
do
  $setup_script
done

