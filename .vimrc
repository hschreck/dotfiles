execute pathogen#infect()
syntax on
filetype plugin indent on

nnoremap <S-H> :vertical resize -5<CR>
nnoremap <S-L> :vertical resize +5<CR>
nnoremap <S-J> :resize +5<CR>
nnoremap <S-K> :resize -5<CR>


nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


set t_Co=256

let g:airline_theme='fairyfloss'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set viewoptions=cursor,folds,slash,unix
let g:skipview_files = ['*\.vim']

set mouse=a

" tab settings
set tabstop=4
set softtabstop=4
set expandtab

" show line nums by default
set number

" turn on search highlighting
set hlsearch

" just because I'm tired of backspace not bloody working
set backspace=indent,eol,start

set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

set title

set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

colorscheme base16-unikitty-dark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_args='--ignore=E501'

let g:ycm_filetype_blacklist = { 'gitcommit':1 }
silent! nmap <F6> :SyntasticToggleMode<CR>
