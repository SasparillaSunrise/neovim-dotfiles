"###########"
" Shortcuts "
"###########"

" Assign a leader:
let g:mapleader = ","

" Fast saving:
nmap <leader>s :w<CR>

" Close buffer:
nmap <leader>bd :bd<CR>
"
" Map arrows to switch between open buffers:
map <right> :bn<CR>
map <left> :bp<CR>


" Unmap F1:
nmap <F1> :echo<CR>


"############"
" Appearance "
"############"

set number
set linebreak

"###########"
" Behaviour "
"###########"

" Use system clipboard
set clipboard=unnamedplus

" Indentation
set shiftwidth=2

" Replace tabs with spaces:
set expandtab

" Vertical splits default to right hand side:
set spr

" Disable 'no write since last change':
set hidden

" Disable swapfile:
set noswapfile

" Search:
set ignorecase    " case insensitive
set smartcase     " match uppercase letters
set hlsearch      " Highlight search terms
set incsearch     " Show search matches typed

" Open file at last edited postition:
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

" Emacs bindings for the command line:
cnoremap <C-A>        <Home>
cnoremap <C-E>        <End>
cnoremap <C-K>        <C-U>

" TODO: Autoinsert close brace. Should handle JS and Rust cases. Python
" different