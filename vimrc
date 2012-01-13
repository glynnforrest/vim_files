""""""""""""""""""
"Vim configuration
""""""""""""""""""
"Author: Glynn Forrest
"me@glynnforrest.com
"
"Load plugins before anything else
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"""""""""""""""""
"General settings
"""""""""""""""""

"Enable highlighting
syntax on

"Enable filetypes
filetype plugin on
filetype indent on

"We're not using vi
set nocompatible

"Don't leave backups everywhere
set nobackup
set nowritebackup
set noswapfile

"Searching wraps around end of file and travels
set wrapscan
set incsearch

"Search smartly
set smartcase
set ignorecase

"Line numbers and show where we are
set number
set ruler

"Show our half typed commands
set showcmd

"Indenting properly
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
set smarttab
set lbr
set tw=80
set wrap

"Expand most folds
set foldlevel=5

"Change buffers without saving
set hidden

"Better filename completion
set wildmode=longest,list,full
set wildmenu
set completeopt=longest,menuone

"See the cursor when moving vertically
set scrolloff=4

"Don't redraw while executing macros
set nolazyredraw

"Refresh automatically
set autoread

"Show tabline only when there are more than 1
set stal=1

"Remove gvim scrollbars
set guioptions-=LlRrb
set guioptions=m

"Disable alt menu keys so they can be used for mappings
"Use <F10> to open the menu
set winaltkeys=no

"Font
set guifont=Consolas\ 10

"Colours
highlight Normal ctermbg=Black ctermfg=White
colorscheme molokai

"""""""""""""""""""""
"Normal mode mappings
"""""""""""""""""""""
"Map the leader to an easy key
let g:mapleader = ","

"Hotkeys to edit and reload .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>

"Quick file write
map <leader>w :w<CR>

"Quick file open
map <leader>e :e 

"Quick split
map <leader>s :vspl<CR><C-w>w
map <leader>S :vspl 

"Copy and paste from the system clipboard
map <leader>P "+P
map <leader>p "+p
map <leader>Y "+Y
map <leader>y "+y

"Quick format of file
map <leader>= gg=G<C-o><C-o>

"Terminal commands in a buffer
map <leader>c :ConqueTerm 
map <leader>C :ConqueTermVSplit 

"Other leader commands
map <leader>n :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <leader>g :!git 

"Make new lines with return
map <CR> o<ESC>
map <S-CR> O<ESC>

"Navigate up and down a long line
nnoremap j gj
nnoremap k gk

"Move lines about
nnoremap <A-k> ddkP
nnoremap <A-j> ddp
nnoremap <A-l> >>
nnoremap <A-h> <<
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
inoremap <A-h> <Esc><<`]a
inoremap <A-l> <Esc>>>`]a
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
vnoremap <A-h> <gv
vnoremap <A-l> >gv

"Scroll a bit faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"Buffer management
map <leader>B :enew<CR>
map <left> :bp<CR>
map <right> :bn<CR>
"Use ctrl so it's not accidental
map <C-down> :BD<CR>
map <C-up> :q<CR>

"Add shift for !
map <C-S-down> :BD!<CR>
map <C-S-up> :q!<CR>

"Tab management
nmap <leader><space> :tabf %<CR>
nmap <leader>x :tabclose<CR>
nmap <C-left> :tabprev<CR>
nmap <C-right> :tabnext<CR>

"Window management
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-,> <C-W><
map <C-.> <C-W>>

"Quick change directory
map <leader>cd :cd 

"Change directory to current buffer
map <leader>d :cd %:p:h<CR>

"Move up a directory
map <leader>D :cd ..<CR>

"Ultimate in lazy
map <space> :

"Clearer searching
map n nzz
map N Nzz

"Increment everything
set nrformats=alpha,octal,hex

"""""""""""
"Statusline
"""""""""""
set laststatus=2
set statusline=\ %F%m%r\ %y\ [%{&ff}]\ %l/%L\ %{getcwd()}

"""""""""""""""""""""
"Insert mode mappings
"""""""""""""""""""""
"Spacebar completion
imap <c-space> <c-x><c-o>

"Cool abbreviations
iab xdate <c-r>=strftime("%d/%H/%Y %H:%M:%S")<CR>
iab xname <c-r>='Glynn Forrest'<CR>
iab xemail <c-r>='me@glynnforrest.com'<CR>
iab xpwd <c-r>=getcwd()<CR>

"Remembers cursor position in a file
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"Ever useful easy insert mode escape
inoremap kj <ESC>


""""""""""""""""
"Plugin settings
""""""""""""""""

""""""""""
"NerdTree 
""""""""""
let NERDTreeShowBookmarks = 1

""""""""""
"CtrlP
""""""""""
let g:ctrlp_map = '<leader>f'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_open_new_file = 0
let g:ctrlp_open_multi = '1t'
let g:ctrlp_working_path_mode = 2
map <leader>F :CtrlPCurWD<CR>
map <leader>b :CtrlPBuffer<CR>

""""""""""
"Syntastic
""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1

""""""
"Gundo
""""""
map <leader>u :GundoToggle<CR>

"""""""""
"Yankring
"""""""""
let g:yankring_history_file = '.yankring'

""""""""""""
"DelimitMate
""""""""""""
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_cr = 1


let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_at_startup = 1 
" let g:neocomplcache_max_list = 5
