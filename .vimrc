"source plugins setup"
"so ~/.vim/plugins.vim"

syntax enable
colorscheme murphy 

"set leader to comma as / is too far from front row"
let mapleader=","

"enable line numbers"
set number relativenumber

"search highlighting"
set hlsearch

"search as you type"
set incsearch
"allow backspac"
set backspace=indent,eol,start

"tabs & spaces"
set tabstop=4 "number of visual spaces for tab"
set softtabstop=4 "number of spaces when editing"
set expandtab "convert tabs into spaces"

"set cursor highlighting"
set cursorline

"set visual menu for autocomplete in menu items"
set wildmenu

"set bracket highlighting"
set showmatch

"----------------------command mappings------------------------------------"
"editing the vimrc file for soruce name space 'se' for shivenigma"
nmap ses :tabedit $MYVIMRC<cr>

"Editing the vimplugins file"
nmap sep :tabedit ~/.vim/plugins.vim<cr>

"disable search highlighting"
nmap <leader><space> :nohlsearch<cr>

"don't skip visual lines, like folded lines in navigation"
nnoremap j gj
noremap k gk

"------------------------Auto Commands -----------------------------------"
"Automaticaclly source .vimrc after edit"
autocmd BufWritePost ~/.vim/vimrc source %
