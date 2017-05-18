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
