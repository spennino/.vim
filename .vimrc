execute pathogen#infect()
syntax enable
filetype plugin indent on

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

if has('gui_running')
	set transparency=0
  colorscheme spring-night
endif
