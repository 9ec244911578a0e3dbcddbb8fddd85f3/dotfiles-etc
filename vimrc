" Vim config from scratch 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"––––––––––––––––––––––––TO DO 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""Folding
"""""""""""""""""""
"""""""""""""""""""
"""""""""""""""""""
"""""""""""""""""""
"""""""""""""""""""
"""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'valloric/youcompleteme'
""Plug 'sirver/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/Wombat'
Plug 'cocopon/iceberg.vim'
Plug 'ajh17/spacegray.vim'
" list ends here. plugins become visible to vim after this call.
call plug#end()

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use 256 colors in terminal
"if !has("gui_running")
"    set t_Co=256
"   set term=screen-256color
"endif

mapclear

set nocompatible 
"vi improved
set termguicolors
"same colors as in terminal
set t_Co=256
set relativenumber
set numberwidth=3
"numbers on side
let mapleader=","
let maplocalleader="–"
"mapleader
set autoindent
"autoindent like previous line on new lines
set hlsearch
set incsearch
"highlight and search while typing 
syntax enable 
"syntax
set wrap
"show full line 
set tabstop=4
set softtabstop=4
set expandtab
"smarttabs 
set showcmd 
"maybe visually show commands
"set cursorline
filetype indent on
"localmapping possible
"set wildmenu ,not really but maybe
set lazyredraw
"better redraw ; add folding ? 
set showmatch 
"set statusline=%.30f\  -\  n  -\   %p%% : \%l\%l\  -\%3c
set shortmess=a

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,
set backupskip=/private/tmp/*
set directory=~~/.tmp,~/tmp,
set writebackup
"backup policy 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ia <esc>l
vnoremap ia <esc>l
inoremap aa  <esc>
vnoremap aa <esc>
inoremap yy  <esc>
vnoremap yy<esc>
"normal mode 

nnoremap i i
xnoremap i i
" insert mode

nnoremap I I
"go to first non-whitespace char + insert mode 

nnoremap zI gI
"go to first column + insert mode

nnoremap a a
xnoremap a a 
" next char + insert mode

nnoremap A A
" end of line + insert mode

nnoremap u o
xnoremap u o
" open line beneath + insert mode


nnoremap U O
xnoremap U O
" open line above + insert Mode

nnoremap e c
xnoremap e c
" delete + insert mode <m>

nnoremap E C
xnoremap E C
" delete until end of line + insert mode

nnoremap x s
xnoremap x s
" delete char + insert mode 

nnoremap X S
xnoremap X S
" delete whole line + insert mode 



nnoremap : :
" command line mode 


inoremap <C-Y> <C-0>
" execute command without leaving insert mode



nnoremap p v
" visual mode 

nnoremap P V
" visual mode -  whole line

nnoremap ä <C-V>
" visual mode - block



nnoremap V R
"replace mode

nnoremap zV gR
"replace mode without layout change




nnoremap h d
xnoremap h d
"delete

nnoremap hh dd
"delete line 
nnoremap H D
"delete until end of line 


nnoremap k x
"delete char

nnoremap K X 
"go left + delete char



nnoremap q J
"join line below the current one

nnoremap zq gJ
"join line below the current one without space 




nnoremap f y
xnoremap f y
" yank 

nnoremap F Y
" yank entire line

nnoremap ff yy
"yank entire line


nnoremap g p
" paste after

nnoremap G P
" paste before cursor

nnoremap zG gP
" paste before + move left

nnoremap zg gp
" paste after + move left



nnoremap v r
" replace char

nnoremap zv gr
" replace char without affecting layout

nnoremap - ~
xnoremap - ~
"switch case + go left

nnoremap z- g~
xnoremap z- g~
" switch case 



nnoremap . .
"repeat last command

nnoremap c u
"undo  

nnoremap C U
"undo whole line

noremap <c-l>  <c-r>
"redo


nmap <space> /
"search forward

nmap <C-space> ?
"search backwards


nnoremap <leader><space> :nohlsearch<cr>
"stop highlighting outdatet searches 

noremap l n
"repeat search

noremap L N
"repeat search in opposite direction

noremap m f
"find char in line 

noremap M F
"find char in line backwards

noremap b t
"find char in line + move left

noremap B T 
"find char in line backwards + move left

noremap + ;
"repeat last fftt search 

noremap % '
"repeat last fftt search backwards




noremap = *
"find word under cursor 

noremap & #
"find word under cursor backwards

noremap z= g*
"A
"find word under cursor with partial matches IS IT REAL ? WHAT DOES IT ?

noremap z& g#
"find word under cursor backwards with partial matches


noremap n h
"left

noremap r k
"top 

noremap t j
"bottom

noremap d l
"right
"maybe replace with gj and gk for wrap



"noremap <c-N> h
"noremap <c-R> k
"noremap <c-T> j
"noremap <c-D> l
"move in normal mode

"noremap <c-H> <c-Y>  
"small move-up
noremap <C-N> <C-U>
"medium move up
noremap <C-D> <C-D>
"medium move down
"noremap <c-Q> <c-E>
"small move up
noremap <C-T> <C-F>
"big move down
noremap <C-R> <C-B>
"big move up

noremap R H
"beginning of site

noremap T L
"bottom of site

noremap Y M
"middle of site

noremap N 0
"beginning of line

noremap D $
"end of line

noremap Z G
"last line

noremap zz gg
"first line

noremap { {
"go to beginning of previous paragraph

noremap } }
"go to beginning of next paragraph

noremap ( (
"go to beginning of previous sentence

noremap ) )
"go to beginning of next sentence



noremap ! %
"go to matching bracket

noremap ^ ^
"go to first non-blank char on line

noremap z^ g^
"go to first non-blank char on screen line

noremap zT g$
"go to last character on screen line  

noremap zY gm
"go to middle of line 

noremap zN g0
"go to beginning of line screen



noremap ? e
"end of word 

noremap * ge
"end of previous word

noremap s w
"beginning of next 'real'(letters only) word

noremap S W
"beginning of next 'pseudo'(non-blank characters) word

noremap o b
"beginning of previous 'real' word 

noremap o B
"beginning of previous 'pseudo' word



nnoremap y m
"mark

nnoremap @ `
"go to mark

nnoremap z@ '
"go to beginning of line of mark

nnoremap z✔ g? 
"rot13 encoding to change



nnoremap ß  :wq <cr>
":wq
nnoremap <leader> ß :mksession<cr>
"save session


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ez :vsplit ~/.zshrc
nnoremap <leader>ei :vsplit ~/.config/i3/config
nnoremap <leader>et :vsplit ~/.tmux.conf
nnoremap <leader>sv :source $MYVIMRC<cr>

augroup new_file 
    autocmd!
    autocmd BufReadPost * :source $MYVIMRC 
augroup END


"edit and (source vim) files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Disable bad habits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <esc> <nop>
map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>
"colorscheme base16-ocean
colorscheme spacegray
"colorscheme apprentice "also nice
let g:spacegray_underline_search=1
let g:spacegray_low_contrast = 1
colorscheme spacegray
