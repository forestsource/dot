"""""""""""""""""""""""""""""""""""""""""
"" BASIC
"""""""""""""""""""""""""""""""""""""""""
" encoding
set fileencoding=utf-8
" fomat
set fileformats=unix
" auto-reloading file 
set autoread
" key input
set timeout timeoutlen=3000 ttimeoutlen=100
" cursor hold
set updatetime=1000
" swap dir
set directory-=.
" undofile
set undofile 
let &g:undodir = &directory
" no swap,backup for security reason
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.
" hate noiseeeee, but want to visible
set visualbell
set t_vb=^[[?5h$<100>^[[?5l
"set belloff=all

"""""""""""""""""""""""""""""""""""""""""
"" DISPLAY
"""""""""""""""""""""""""""""""""""""""""
" number
set number
" no alert when to move buffer
"set hidden
" command visible
set showcmd
" ruler
set ruler
" visible control character
set list
" no abbreviate line
set display=lastline
" status bar
set laststatus=2
set cmdheight=2
let &g:statusline="%{winnr('$')>1?'['.winnr().'/'.winnr('$')"
      \ . ".(winnr('#')==winnr()?'#':'').']':''}\ "
      \ . "%{(&previewwindow?'[preview] ':'').expand('%:t')}"
      \ . "\ %=%{(winnr('$')==1 || winnr('#')!=winnr()) ?
      \ '['.(&filetype!=''?&filetype.',':'')"
      \ . ".(&fenc!=''?&fenc:&enc).','.&ff.']' : ''}"
      \ . "%m%{printf('%'.(len(line('$'))+2).'d/%d',line('.'),line('$'))}"
" 'breakat'
set linebreak
set showbreak=\
set breakat=\ \	;:,!?
" can move before,next line
set whichwrap+=h,l,<,>,[,],b,s,~
" abbreviate any message
set shortmess=I
" show all change line 
set report=0
" color
"set colorcolumn=79
" cursor
set cursorline cursorcolumn
highlight CursorLine ctermbg=Black
highlight CursorLine ctermfg=Blue
highlight CursorColumn ctermbg=Black
highlight CursorColumn ctermfg=Blue

"""""""""""""""""""""""""""""""""""""""""
"" EDIT
"""""""""""""""""""""""""""""""""""""""""
" tab space width
set tabstop=2 softtabstop=2 shiftwidth=2
" tab to space
set expandtab
" stop multiple shiftwidth
set shiftround
" indent
set autoindent smartindent
" hilight pair bracket
set showmatch matchpairs+=<:>
" enable backspace
set backspace=indent,eol,start
" skip space char, when to move line
set nostartofline

"""""""""""""""""""""""""""""""""""""""""
"" SEARCH
"""""""""""""""""""""""""""""""""""""""""
" no hilight result
set nohlsearch
" repeat result
set wrapscan
" case-insensitive
set ignorecase
" inclimental search
set incsearch

"""""""""""""""""""""""""""""""""""""""""
"" COMPLETE
"""""""""""""""""""""""""""""""""""""""""
set completeopt=menuone
" no use from other buffer
set complete=.
" suggest item num
set pumheight=20

"""""""""""""""""""""""""""""""""""""""""
"" MODE
"""""""""""""""""""""""""""""""""""""""""
set virtualedit=block

"""""""""""""""""""""""""""""""""""""""""
"" FIE MANAGER
"""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldmethod=indent
set foldcolumn=1
set fillchars=vert:/|

"""""""""""""""""""""""""""""""""""""""""
"" MENU
"""""""""""""""""""""""""""""""""""""""""
set nowildmenu
set wildmode=list:longest,full

"""""""""""""""""""""""""""""""""""""""""
"" PANE
"""""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright
set winheight=1
set cmdwinheight=5
set noequalalways
set previewheight=8
set helpheight=12

"""""""""""""""""""""""""""""""""""""""""
"" OTHER
"""""""""""""""""""""""""""""""""""""""""
set ttyfast
