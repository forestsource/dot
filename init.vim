
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/guest/.dein/plugin//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/guest/.dein/plugin/')
  call dein#begin('/home/guest/.dein/plugin/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/guest/.dein/plugin//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" encoding
set fenc=utf=8

" basic 
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

" disp
set list
set listchars=tab:≫-,trail:-,eol:?,extends:≫,precedes:≪,nbsp:%
set tabstop=2
set shiftwidth=4

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" keymap
inoremap <silent> jj <esc>
inoremap <silent> ｊｊ <esc>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

