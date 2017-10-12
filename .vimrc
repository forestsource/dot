" encoding
set fenc=utf=8

" basic
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
set encoding=utf-8
set fileencoding=utf-8

" disp
set list
set listchars=tab:≫-,trail:-,eol:¬,extends:≫,precedes:≪,nbsp:%
set tabstop=2
set shiftwidth=4

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" netrw
let g:netrw_liststyle = 3

" keymap
inoremap <silent> jj <esc>
inoremap <silent> ｊｊ <esc>
vnoremap v ^$h
