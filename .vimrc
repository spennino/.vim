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
set ignorecase
set smartcase
set noerrorbells visualbell t_vb=
set nowrap
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline

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
nnoremap <leader>nw :set nowrap<cr>
nnoremap <leader>sw :set wrap<cr>

"Turn off highlight
nnoremap <leader>noh :noh<cr>
nnoremap <leader>hls :set hlsearch<cr>

"Go back to previous file
nnoremap <leader>gb :e #<cr>

"Toggle cursor column marker
nnoremap <leader>cm :set cursorcolumn<cr>
nnoremap <leader>ncm :set nocursorcolumn<cr>

"Toggle NERDTree
nnoremap <Leader>nt :NERDTreeToggle<cr>

"More window height, Less windown height
nnoremap <silent> <leader>wm :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>wl :exe "resize " . (winheight(0) * 2/3)<CR>

