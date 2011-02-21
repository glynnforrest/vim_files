"load plugins before anything else
"filetype off
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

"cool leader commands
nmap <leader>w :w<CR>
nmap <leader>e :e 
map <leader>s :vspl 
"repeat last command with a !
"map <leader>! :<up>!

"plugin hotkeys
nmap  <leader>n :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
nmap  <leader>t :TlistOpen<CR>
let Tlist_Use_Right_Window = 1

"put the arrow keys to good use
map <left> :bp<CR>
map <right> :bn<CR>
"use ctrl so it's not by accident
map <c-down> :bd<CR>
map <c-up> :q<CR>

"easier windows controls
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"fast editing of the .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:echo 'vimrc reloaded'<CR>

"TagList Settings
let Tlist_Auto_Open=0 " let the tag list open automagically
let Tlist_Compact_Format = 1 " show small menu
let Tlist_Ctags_Cmd = 'ctags' " location of ctags
let Tlist_Enable_Fold_Column = 1 " do show folding tree
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 1 " fold closed other trees
let Tlist_Sort_Type = "name" " order by 
let Tlist_Use_Right_Window = 1 
let Tlist_WinWidth = 40 
" don't show variables in php
let tlist_php_settings = 'php;c:class;d:constant;f:function' 
