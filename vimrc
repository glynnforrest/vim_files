"load plugins before anything else
"filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"colours
highlight Normal ctermbg=Black ctermfg=White
colorscheme xoria256

"General settings
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
set wildmode=longest,list,full
set wildmenu

"Navigate up and down a long line
nnoremap j gj
nnoremap k gk

"space completion
imap <NUL> <c-space>
imap <c-space> <c-x><c-o>

"map the leader to an easy key
let g:mapleader = ","


"leader commands
nmap <leader>w :w<CR>
nmap <leader>e :e 
"quick split view on a file
map <leader>s :vspl<CR> 
"repeat last command with a !
"map <leader>! :<up>!
nmap  <leader>n :NERDTreeToggle<CR>
nmap  <leader>t :call MyTlistToggle()<CR>
nmap <leader>f :CommandT<CR>
nmap <leader>F :CommandT 

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

"NerdCommenter Hotkey

"Buftabs settings
set laststatus=2
let g:buftabs_in_statusline=1

"NerdTree Settings
let NERDTreeShowBookmarks = 1

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
"Don't show variables in php
let tlist_php_settings = 'php;c:class;d:constant;f:function' 

"Toggle TagList, but also put the cursor inside
let g:tlist_toggle = 0
function! MyTlistToggle() 
	if g:tlist_toggle == 0
		TlistOpen
		let g:tlist_toggle = 1
	else
		TlistClose
		let g:tlist_toggle = 0
	endif
endfunction
