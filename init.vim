" Memo
" - <C-w>n :new
" * <C-w>s :split
" * <C-w>v :vsplit
" * <C-w>c :close
" * <C-w>o :close all
" * <C-w>w :go next
" * <C-w>p :go previous

" Normal Mode
cnoremap <C-u>init :edit $MYVIMRC<CR>
cnoremap <C-u>src :source $MYVIMRC<CR>

" Split View movekey bind
noremap <silent><C-h> <C-w>h
noremap <silent><C-j> <C-w>j
noremap <silent><C-k> <C-w>k
noremap <silent><C-l> <C-w>l

" Increasing movekey bind
nnoremap <S-h> 10<Left>
nnoremap <S-j> 10<Down>
nnoremap <S-k> 10<UP>
nnoremap <S-l> 10<Right>
vnoremap <S-h> 10<Left>
vnoremap <S-j> 10<Down>
vnoremap <S-k> 10<UP>
vnoremap <S-l> 10<Right>

" Home / End movekey bind
nnoremap <C-e> <End>

" Insert Mode movekey bind
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-d> <BS>

" Default nop
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Right> <nop>
vnoremap <Left> <nop>
vnoremap <BS> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <BS> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>
noremap <BS> <nop>

" Encode setting
set encoding=utf-8

" Editer setting
set number
set splitbelow
set splitright
set noequalalways
set wildmenu
set visualbell

" Cursorl setting
set ruler
set cursorline
set nocursorcolumn

" Tab setting
set tabstop=2
set shiftwidth=2
set lcs=tab:>.
set expandtab
set autoindent
set smartindent

" Search setting
set incsearch
set smartcase
set hlsearch
noremap <C-w>n :set nohlsearch!<CR>
noremap <C-w>i [I

" Other setting
set list
set showmatch
set clipboard=unnamed
set noswapfile
set nobackup
set nowritebackup
set autoread
set hidden
set showcmd
set nowrap

" Resice window bind
nnoremap <C-w>h <C-w>5<
nnoremap <C-w>l <C-w>5>
nnoremap <C-w>k <C-w>5+
nnoremap <C-w>j <C-w>5-

" Binary editor bind
noremap <C-w>b :set binary<CR>:%!xxd<CR>
noremap <C-w>bb :%!xxd -r<CR>

" Number bind
noremap <C-w>r :set relativenumber!<CR>

" Terminal setting
noremap <C-w>t :term<CR>
tnoremap <Esc> <C-\><C-n>

" Leader setting
let mapleader=" "

" Folding setting
set foldmethod=indent
set foldlevel=2
set foldcolumn=3

" for python3 and defx.vim
let g:python3_host_prog = '~/scoop/shims/python.exe'

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Path setting
" Pluginディレクトリのパス
let s:dein_dir = expand('~/AppData/Local/dotwins/.vim/dein')
" dein.vimのパス
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" tomlのディレクトリへのパス
let s:toml_dir = expand('~/AppData/Local/dotwins/.config')

" set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " 起動時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  " 利用時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
