execute pathogen#infect()
syntax enable
filetype plugin indent on

colorscheme spring-night

set background=dark
set number
set linespace=3
set guifont=Inconsolata:h14
set wildignore+=node_modules/**,build/tmp/**
set t_Co=256
set expandtab
set tabstop=2
set shiftwidth=2
set list
set splitright
set splitbelow
set hlsearch

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
