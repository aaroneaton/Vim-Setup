" Required lines for Vundle, must stay at top
set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/vundle.git/
call vundle#rc()

"" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'Align.vim'
Bundle 'AutoClose'
Bundle 'Buffergator'
Bundle 'Command-T'
Bundle 'fugitive.vim'
Bundle 'genutils'
Bundle 'Gist.vim'
Bundle 'Markdown'
Bundle 'multvals.vim'
Bundle 'snipMate'
Bundle 'SuperTab'
Bundle 'surround.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'tlib'
Bundle 'vimwiki'
Bundle 'ZoomWin'

" Change <Leader> to comma
let mapleader=","

" Make font bigger
set gfn=Menlo\ Regular:h12


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
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Wrapped line navigation
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

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
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

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
autocmd BufEnter * lcd %:p:h

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

" Press <Leader>m to get rid of search highlighs
nmap <silent> <Leader>m :silent noh<CR>

"""" End Key Remapping """"

"""" Begin Syntax stuff """"

" Set all .txt files to use .mkd syntax highlighting
au! BufNewFile,BufRead *.txt set filetype=mkd
au BufNewFile,BufRead *.txt set ai formatoptions=tcroqn2 comments=n:$gt

"""" End Syntax stuff""""

"""" Begin Plugin Settings """"

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" Current Date/Time insertion
"" Date & Time
nmap <leader>D a<C-R>=strftime("=== %Y-%m-%d %H:%M ===")<CR><CR>
imap <leader>D <C-R>=strftime("=== %Y-%m-%d %H:%M ===")<CR><CR>

"" Date only
nmap <leader>d a<C-R>=strftime("=== %Y/%m/%d ===")<CR><CR>
imap <leader>d <C-R>=strftime("=== %Y/%m/%d ===")<CR><CR>

"" Time only
nmap <leader>t a<C-R>=strftime("=== %H:%M ===")<CR><CR>
imap <leader>t <C-R>=strftime("=== %H:%M ===")<CR><CR>

nmap <leader>ni gg$<CR>

" VimWiki configuration
"" Change default index location
let g:vimwiki_list = [{'path': '~/Documents/Notes/', 'ext': '.txt', 'template_path': '~/Documents/Notes_html/templates/', 'template_default': 'default', 'template_ext': '.tpl', 'diary_rel_path': '', 'auto_export': 1}]
let g:vimwiki_browsers = ['/Applications/Google\ Chrome.app']
let g:vimwiki_global_ext = 0
let g:vimwiki_badsyms = ' '
"" Insert docs location
nmap <leader>L a[[file:///Users/aaron/Documents/Notes/docs/
imap <leader>L [[file:///Users/aaron/Documents/Notes/docs/


"""" End Plugin Settings """"
