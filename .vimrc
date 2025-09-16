" ~/.vimrc

" Basic settings
set nocompatible
set number
set relativenumber
set ruler
set showcmd
set showmode
set wildmenu
set wildmode=list:longest
set scrolloff=3

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" File handling
set autoread
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undofile
set undodir=~/.vim/undo//

" Create directories if they don't exist
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "p")
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "p")
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p")
endif

" Visual settings
syntax enable
set background=dark
colorscheme desert
set cursorline
set laststatus=2
set statusline=%f\ %m%r%h%w\ [%Y]\ [%{&ff}]\ %=%l,%c\ %p%%

" Key mappings
let mapleader = ","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" File type specific settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType css setlocal tabstop=2 shiftwidth=2 expandtab

