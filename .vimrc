"load plugins before anything else
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"colours
highlight Normal ctermbg=Black ctermfg=White
colorscheme xoria256

"some sensible defaults
syntax on
filetype on
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set wrapscan
set number
set autoindent
set smartindent
set hidden

"space completion
imap <NUL> <c-space>
imap <c-space> <c-x><c-o>

"leader mapping
let mapleader = ","
let g:mapleader = ","

nmap  <leader>n :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
nmap  <leader>t :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

"easier windows controls
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"compile / run (Shift-<F3>)
:autocmd FileType php noremap <S-F3> :w!<CR>:!/usr/bin/php %<CR>

"syntax check (Shift-<F2>)
:autocmd FileType php noremap <S-F2> :!/usr/bin/php -l %<CR>



"fast editing of the .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:echo 'vimrc reloaded'<CR>

map <F6> :bp<CR>
map <F7> :bn<CR>
