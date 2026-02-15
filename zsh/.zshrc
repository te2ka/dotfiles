autoload -Uz colors && colors

bindkey -v

autoload -Uz select-word-style && select-word-style default
zstyle ':zle:*' word-chars " /=;@'{},|"
zstyle ':zle:*' word-style unspacified

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{green}{%s}-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}{%s}-[%b]%f'

function _update_vcs_info_msg() {
  LANG=en_US.UTF-8 vcs_info
  RPROMPT="${vcs_info_msg_0_}"
}
autoload -Uz add-zsh-hook && add-zsh-hook precmd _update_vcs_info_msg

zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

setopt print_eight_bit
setopt no_beep
setopt ignore_eof
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob
setopt nonomatch

alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ls="eza -s type"
alias ll='ls -l --git'

eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(rbenv init -)"
eval "$(mise activate zsh)"

if type brew &>/dev/null
then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit && compinit
fi

bindkey '^R' history-incremental-pattern-search-backward

function fzf-select-history() {
  BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N fzf-select-history
bindkey '^r' fzf-select-history
