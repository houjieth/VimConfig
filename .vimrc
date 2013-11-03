" Initializations

filetype on

autocmd BufRead *.txt set filetype=help

" Editor settings

set nu 

set term=xterm-256color

set autoindent

set smartindent

set tabstop=4

set shiftwidth=4

set showmatch

set hlsearch

set mouse=

set expandtab

set cindent

set wildmenu

set ignorecase

set incsearch

syntax on

set background=dark

set autowrite

set statusline+=%m

" Key mappings

"" error list
map <C-l> <ESC>:clist<CR>
map <C-n> <ESC>:cnext<CR>
map <C-m> <ESC>:cprev<CR>
map <C-j> <ESC>:next<CR>
map <C-k> <ESC>:prev<CR>

map <F8> <ESC>:clist<CR>
map <F10> <ESC>:cnext<CR>
map <F9> <ESC>:cprev<CR>
map <F12> <ESC>:next<CR>
map <F11> <ESC>:prev<CR>

noremap cc :cc<Space>

"" cursor movement
map j gj
map k gk

nnoremap H 0
nnoremap L $

nnoremap dH d0
nnoremap dL d$

map <S-left> b
map <S-right> w

nnoremap , <C-d>
nnoremap . <C-u>

map <C-\>\ <ESC>:set tags=./tags<CR>
map <C-\>] <ESC>:set filetype=help<CR>

map <C-h> <ESC>:vimgrep // *<left><left><left>

"" tabs
noremap fl gt
noremap fh gT
noremap th  :tabfirst<CR>
noremap tk  :tabnext<CR>
noremap tj  :tabprev<CR>
noremap tl  :tablast<CR>
noremap tt  :tabedit<Space>
noremap tn  :tabnew<Space>
noremap tm  :tabm<Space>
noremap td  :tabclose<CR>

"" misc 
nnoremap ; .
noremap z <C-w>
