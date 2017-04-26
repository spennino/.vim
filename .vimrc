execute pathogen#infect()
syntax enable
filetype plugin indent on

colorscheme spring-night

set background=dark
set number
set linespace=3
set guifont=Inconsolata:h14
set wildignore+=node_modules/**,build/tmp/**,*.js.map
set t_Co=256
set expandtab
set tabstop=2
set shiftwidth=2
set list
set splitright
set splitbelow
set hlsearch
set smartcase

"Comma and backslash can both be used as leaders
nmap , \

"Edit vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"Source vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"Map moving the cursor around to something more simple
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Toggle wrapping on and off
nnoremap <leader>nw :set<Space>nowrap<cr>
nnoremap <leader>sw :set<Space>wrap<cr>
