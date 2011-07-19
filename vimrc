""""""""""""""""""
"Vim configuration
""""""""""""""""""
"Author: Glynn Forrest
"me@glynnforrest.com
"
"load plugins before anything else
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"colours
highlight Normal ctermbg=Black ctermfg=White
colorscheme mustang

"get some gvim real estate back
"set guioptions+=LlRrb
"set guioptions-=LlRrb
set guioptions=mT
set guifont=Monospace\ 9

"""""""""""""""""
"General settings
"""""""""""""""""
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
set wildmode=longest,list,full
set wildmenu
set scrolloff=4
set incsearch
set autoread
set completeopt=longest,menuone
set tw=80
set wrap

"""""""""""""""""""""
"Normal mode mappings
"""""""""""""""""""""
"Navigate up and down a long line
nnoremap j gj
nnoremap k gk

"map the leader to an easy key
let g:mapleader = ","

"leader commands
nmap <leader>w :w<CR>
nmap <leader>e :e 
nmap <leader>s :vspl<CR><C-w>w 
nmap  <leader>n :NERDTreeToggle<CR>
nmap  <leader>t :call MyTlistToggle()<CR>
nmap <leader>f :CommandT<CR>
nmap <leader>F :CommandT 
nmap <leader>g :!git 

"make new lines with return
nmap <CR> o<ESC>
nmap <S-CR> O<ESC>

"left and right to switch buffers
map <left> :bp<CR>
map <right> :bn<CR>

"up and down to delete buffers and windows
"use ctrl so it's not accidental
map <c-down> :bd<CR>
map <c-up> :q<CR>

"easier windows controls
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"fast editing of the .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>


"""""""""""""""""""""
"Insert mode mappings
"""""""""""""""""""""
"space completion
imap <c-space> <c-x><c-o>






""""""""""""""""
"Plugin settings
""""""""""""""""

""""""""""
"NerdTree 
""""""""""
let NERDTreeShowBookmarks = 1

"""""""""
"TagList 
"""""""""
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
let Tlist_Auto_Open=0 
let Tlist_Compact_Format = 1 
let Tlist_Ctags_Cmd = 'ctags' 
let Tlist_Enable_Fold_Column = 1 
let Tlist_Exist_OnlyWindow = 1 
let Tlist_File_Fold_Auto_Close = 1 
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 1 
let Tlist_WinWidth = 40 
"Don't show variables in php
let tlist_php_settings = 'php;c:class;d:constant;f:function' 

""""""""""
"Syntastic
""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
