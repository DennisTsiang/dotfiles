" Charlie's Vim Config

" 'just the essentials'
syntax enable
set background=dark
colorscheme base16-default-dark
set path=$PWD/**
set nocompatible
set wildmenu
set showmatch
set incsearch
set hlsearch
set spell spelllang=en_us
set autoread
set scrolloff=5
set noerrorbells
set colorcolumn=80
set nowrap
set cursorcolumn

set number
set numberwidth=3
highlight LineNr ctermfg=Black ctermbg=LightGrey

set smarttab smartindent expandtab
set tabstop=8 softtabstop=8 shiftwidth=2
set backspace=indent,eol,start

let mapleader=";"

" color UI elements
hi CursorColumn ctermfg=white ctermbg=black
hi StatusLine ctermfg=black ctermbg=white
hi WildMenu ctermfg=white ctermbg=black

" movement
noremap j gj
noremap k gk
noremap J 5j
noremap K 5k
noremap B ^
noremap E $

" windows
nnoremap <leader>w :bd<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>n <C-w>v
nnoremap <tab> :bn<cr>
nnoremap <S-tab> :bp<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>rm :call delete(expand('%')) \| bdelete!<CR>

" plugins & shortcuts
nnoremap <SPACE> :FZF<cr>

nnoremap <leader>t :!ctags -R .<cr>
nnoremap <leader><tab> <C-]>
nnoremap <leader>§ <C-t>

nnoremap <leader>f :Autoformat<cr>
nnoremap <leader>g :Gread<cr>

nnoremap <cr> :w<cr>

" spelling
nnoremap <Left> [s
nnoremap <Right> ]s
nnoremap <Up> z=
nnoremap <Down> :%s /
nnoremap <BS> 1z=

" insert mappings
inoremap kj <esc>
inoremap jk <esc>
inoremap kk <esc>
inoremap jj <esc>
inoremap JJ <esc>
inoremap KK <esc>

" plugin settings
let g:SuperTabCompleteCase = 'ignore'

let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_doc_keywordprg_enabled = "0"

let g:ackprg = "ag -ul --nogroup --nocolor --column"

let g:NERDSpaceDelims = 1

let $FZF_DEFAULT_COMMAND = 'ag -l -g "" --hidden'

" automatic commands
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,*.ru,*.rake} set ft=ruby
autocmd BufWritePre * :Tab2Space

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'ervandew/supertab'       " completion
Plug 'itspriddle/vim-stripper' " white space trimming
Plug 'mileszs/ack.vim'         " project search
Plug 'luochen1990/rainbow'     " bracket highlighting
Plug 'scrooloose/nerdcommenter'        " comment toggling
Plug 'terryma/vim-multiple-cursors'    " something a little like sublime
Plug 'rhlobo/vim-super-retab'        " command to convert tabs to spaces

Plug 'tpope/vim-fugitive'      " git commands
Plug 'airblade/vim-gitgutter'  " gutter git status

Plug 'chriskempson/base16-vim'

Plug 'vim-ruby/vim-ruby'        " ruby
Plug 'tpope/vim-endwise'        " ruby end insertion
Plug 'tpope/vim-haml'           " haml
Plug 'kchmck/vim-coffee-script' " coffeescript
Plug 'fatih/vim-go'             " golang
Plug 'rust-lang/rust.vim'       " rust
Plug 'yaml.vim'                 " yml
Plug 'valloric/matchtagalways'  " html tag matching
Plug 'mxw/vim-jsx'              " jsx & React

" currently unused
" Plug 'nelstrom/vim-mac-classic-theme' " coolerrs
" Plug 'nathanaelkane/vim-indent-guides' " show indent level
" Plug 'slim-template/vim-slim'
" Plug 'lervag/vimtex'
" Plug 'pearofducks/ansible-vim'
" Plug 'rhysd/vim-crystal'
" Plug 'neo4j-contrib/cypher-vim-syntax'
call plug#end()
