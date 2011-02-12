"load plugins before anything else
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"colours
highlight Normal ctermbg=Black ctermfg=White
colorscheme xoria256

"some sensible defaults
syntax on
filetype plugin on
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

"plugin hotkeys
nmap  <leader>n :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
nmap  <leader>t :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

"easy file writes
nmap <leader>w :w<CR>

"easier windows controls
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"fast editing of the .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:echo 'vimrc reloaded'<CR>

