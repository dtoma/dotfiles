" Source: http://dougblack.io/words/a-good-vimrc.html

execute pathogen#infect()

syntax enable           " enable syntax processing

colorscheme molokai

set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''

" Spaces & Tabs

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces


" UI Config

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]


" Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
