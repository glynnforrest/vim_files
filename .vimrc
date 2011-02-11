"Load plugins before anything else
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
syntax on
filetype on
highlight Normal ctermbg=Black ctermfg=White
colorscheme xoria256
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set wrapscan
set number
set autoindent
set smartindent
set hidden

imap <NUL> <c-space>
imap <c-space> <c-x><c-o>
map  <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
map  <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
map <F4> :MiniBufExplorer<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Compile / run (Shift-<F3>)
:autocmd FileType php noremap <S-F3> :w!<CR>:!/usr/bin/php %<CR>

"Syntax check (Shift-<F2>)
:autocmd FileType php noremap <S-F2> :!/usr/bin/php -l %<CR>

"map <F5> :!rm tags<CR>:!ctags -R<CR>


"Fast editing of the .vimrc
map <leader>v :e! ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:echo 'vimrc reloaded'<CR>

map <F6> :bp<CR>
map <F7> :bn<CR>
