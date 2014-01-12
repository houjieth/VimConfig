" Initializations

filetype on

autocmd BufRead *.txt set filetype=ipreview

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
nnoremap <C-l> <ESC>:clist<CR>
nnoremap <C-n> <ESC>:cnext<CR>
nnoremap <C-m> <ESC>:cprev<CR>
nnoremap <C-j> <ESC>:next<CR>
nnoremap <C-k> <ESC>:prev<CR>

nnoremap <F8> <ESC>:clist<CR>
nnoremap <F10> <ESC>:cnext<CR>
nnoremap <F9> <ESC>:cprev<CR>
nnoremap <F12> <ESC>:next<CR>
nnoremap <F11> <ESC>:prev<CR>

noremap cc :cc<Space>

"" cursor movement
map j gj
map k gk

nnoremap H 0
nnoremap L $

nnoremap dH d0
nnoremap dL d$

nnoremap yH y0
nnoremap yL y$

map <S-left> b
map <S-right> w

nnoremap , <C-d>
nnoremap . <C-u>

nnoremap <C-\>\ <ESC>:set tags=./tags<CR>
nnoremap <C-\>] <ESC>:set filetype=help<CR>

nnoremap <C-h> <ESC>:vimgrep // *<left><left><left>

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
noremap z <C-w>
nnoremap ; :

"" file operation
nnoremap qq :q!<CR>
nnoremap wq :wq<CR>
nnoremap we :w<CR>

"Git branch
function! GitBranch()
    let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
    if branch != ''
        return '   Git Branch: ' . substitute(branch, '\n', '', 'g')
    en
    return ''
endfunction

function! CurDir()
    return substitute(getcwd(), '/Users/amir/', "~/", "g")
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Format the statusline
set laststatus=2
"set statusline=\ %f\ %=%P\ %{fugitive#statusline()}

" For Vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!

" vim-airline
Bundle 'vim-airline'
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#tabline#enabled = 1
" for different special symbol settings using patched/unpatched font, please use :help airline
