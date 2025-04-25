export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_RUNTIME_DIR=/run/user/$UID

export LANG=ja_JP.UTF-8

export HISTFILE="$XDG_STATE_HOME"/zsh/history
export HISTSIZE=1000000
export SAVEHIST=1000000

export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export RBENV_ROOT="$XDG_DATA_HOME"/rbenv
export GEM_HOME="${XDG_DATA_HOME}"/gem
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}"/gem
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle/config
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle

export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config

export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant

export CP_HOME_DIR="$XDG_DATA_HOME"/cocoapods

export GOENV_ROOT="$HOME/.goenv"
export GOPATH="$XDG_DATA_HOME"/go

export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/starship.toml
export STARSHIP_CACHE="$XDG_CACHE_HOME"/starship/cache

export PATH="/usr/local/sbin:$PATH"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/bin"
