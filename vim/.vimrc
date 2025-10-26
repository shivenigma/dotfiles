"source plugins setup"
"so ~/.vim/plugins.vim"

syntax enable
colorscheme murphy 

"make vim background tranperant so that terminal theme can be visible

hi NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer ctermbg=None guibg=NONE

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

" ===== Programmer's Dvorak Remapping =====
" Movement: htns (h is already correct, only remap t, n, s)
nnoremap <nowait> n k
nnoremap <nowait> t j
nnoremap <nowait> s l
" h already moves left, no need to remap

" Uppercase versions
"noremap T J
"noremap N K
"noremap S L
" H already works, no need to remap

" Remap displaced keys
"noremap j t    " 'till' moved to j
"noremap J T
"noremap l n    " 'next search' moved to l
"noremap L N
"noremap k s    " 'substitute' moved to k
"noremap K S

"----------------------command mappings------------------------------------"
"editing the vimrc file for soruce name space 'se' for shivenigma"
"nmap ses :tabedit $MYVIMRC<cr>

"Editing the vimplugins file"
"nmap sep :tabedit ~/.vim/plugins.vim<cr>

"disable search highlighting"
nmap <leader><space> :nohlsearch<cr>



"------------------------Auto Commands -----------------------------------"
"Automaticaclly source .vimrc after edit"
autocmd BufWritePost ~/.vim/vimrc source %
