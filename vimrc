" Required lines for Pathogen, must stay at top
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Change <Leader> to comma
let mapleader=","

set noncompatible

" Default color scheme
color lucius

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

" Status bar
set laststatus=2
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Remember last location in file
if has("autocmd")
	au BufReadPost * if line ("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal g'\"" | endif
endif

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif

" Auto-change the working directory to the file I'm working on
autocmd BufEnter * lct %:p:h

"""" Begin Key Remapping """"

" Opens an edit command with the path of the currently edited file filled in
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Shortcuts to easily change to another window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" <Leader>v brings up my .vimrc
" <Leader>V reloads it -- making all changes active without restarting vim
" (have to save first)
map <leader>v :sp ~/.vim/vimrc<CR><C-W>_
map <silent> <leader>V :source ~/.vim/vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Press <Leader>m to get rid of search highlighting
nmap <silent> <leader>m :silent noh<CR>

" Takes out one less keystroke to get a colon
nnoremap ; :

" Use jj to escape to normal mode
inoremap jj <ESC>

" Create new split window and make it the active window
nnoremap <leader>w <C-w>v<C-w>l

"""" End Key Remapping """"

"""" Begin Plugin Settings """"



"""" End Plugin Settings """"
