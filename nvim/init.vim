set directory=$XDG_CACHE_HOME/nvim/swap,~/,/tmp
set backupdir=$XDG_CACHE_HOME/nvim/backup,~/,/tmp
set undodir=$XDG_CACHE_HOME/nvim/undo,~/,/tmp
set viminfo+=n$XDG_CACHE_HOME/nvim/viminfo
set runtimepath+=$XDG_CONFIG_HOME/nvim,$XDG_CONFIG_HOME/nvim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/nvim/init.vim"

set number
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set fileencodings=utf-8,cp932

