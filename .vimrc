"Setup
set noeol
set t_co=256

let g:pathogen_disabled= []

"pathogen and plugins
filetype plugin indent on
execute pathogen#infect()
syntax on

"Basic color setup & numbering
set relativenumber
set number
let NERDTreeShowLineNumbers=1
colorscheme slate
set noeb
set backspace=2
let g:airline#extensions#ale#enabled = 1
"Bracketing and quotation help
"inoremap { {<cr><cr>}<esc>ki<tab>
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
iabbrev /* /**/<Esc>hi<space>
set showmatch

"Default formatting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set tw=100

"easy split nav
set noerrorbells
set splitbelow
set splitright

"Shortcuts
nnoremap <leader>ev :15split $MYVIMRC<cr> " Edit vimrc
nnoremap <leader>lv :source $MYVIMRC<cr>  " Load vimrc
nnoremap <C-J> <C-W><C-J> " Move vertical splits
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-h> " Move Horizontal splits
nnoremap <C-L> <C-W><C-l>
nnoremap <leader>p :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>c :close<CR>
nnoremap <leader>dw :%s/\s\+$//e<cr>kj

"Window sizing
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

"Remember line
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set pastetoggle=<leader>v

"airline-line
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set laststatus=2
let g:airline_theme='simple'
let g:bufferline_echo = 0
set noshowmode
let g:airline_powerline_fonts = 1


"Undotree
nnoremap <leader>6 :UndotreeToggle<cr>

"Nerd tree keybinding
nnoremap <leader>5 :NERDTreeToggle<cr>

"Buffregator
nnoremap <leader>4 :BuffergatorToggle<cr>

"Eclim

"Calendar

"AUTO COMMAND GROUPS"
" System wide
autocmd InsertLeave * set relativenumber
autocmd InsertEnter * set norelativenumber

"Org-mode
augroup filetype_org
    autocmd!
    autocmd FileType org set spell
    autocmd FileType org let g:ycm_seed_identifiers_with_syntax = 0
    autocmd FileType org let g:ycm_auto_trigger = 4
augroup END

"Text"
augroup filetype_text
    autocmd!
    autocmd FileType txt let g:ycm_seed_identifiers_with_syntax = 0
augroup END

"Ruby"
augroup filetype_ruby
    autocmd!
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType ruby let g:rubycomplete_buffer_loading =1
    autocmd FileType ruby let g:rubycomplete_rails = 1
augroup END

"C"
augroup filetype_c
    autocmd!
    autocmd FileType c inoremap { {<cr><cr>}<esc>ki<tab>
augroup END


set shell=/bin/bash

