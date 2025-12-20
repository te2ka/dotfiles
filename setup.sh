#!/usr/bin/env bash

set -eu

readonly CONFIG_DIR="$(dirname "$0")"

. "${CONFIG_DIR}/zsh/.zshenv"

mkdir -p "${XDG_DATA_HOME}" "${XDG_CONFIG_HOME}" "${XDG_STATE_HOME}" "${XDG_CACHE_HOME}"

for setup_script in $(find "${CONFIG_DIR}/__setup__" -type f -name '*.sh')
do
  $setup_script
done
