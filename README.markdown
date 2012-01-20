# Channeleaton's Vim Setup

## Installed Plugins
* [Align](https://github.com/vim-scripts/Align) - Easily align text
* [AutoClose](https://github.com/vim-scripts/AutoClose) - Automatically create matching closing symbols. Saves a ton of typing.
* [Buffergator](https://github.com/vim-scripts/Buffergator) - Visual buffer managment
* [Command-T](https://github.com/vim-scripts/Command-T) - Open files and buffers with lightning quick speed!
* [Fugitive](https://github.com/tpope/vim-fugitive) - Exceptional Git intigration for Vim
* [Genutils](https://github.com/vim-scripts/genutils) - Generally useful utilities
* [Gist](https://github.com/vim-scripts/Gist.vim) - Create and edit Gists right in Vim
* [Markdown](https://github.com/hallison/vim-markdown) - Syntax highlighting for Markdown
* [Multvals](https://github.com/vim-scripts/multvals.vim) - Dependencies
* [snipMate](https://github.com/garbas/vim-snipmate) - Save snippets for any filetype
* [SuperTab](https://github.com/ervandew/supertab) - Insert mode Tab completion!
* [Surround](https://github.com/vim-scripts/surround.vim) - Surround your text in love...or brackets, quotation marks, etc.
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)- Comment your code like a pro.
* [NERDTree](https://github.com/scrooloose/nerdtree)- Visual folder/file navigation
* [tlib](https://github.com/tomtom/tlib_vim) - Required for SnipMate. Provides other utility functions.
* [VimWiki](https://github.com/vim-scripts/VimWiki) - Have your very own wiki inside Vim.
* [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in and out of windows

## Basic Customizations

* Changed `<leader>` to `,`
* Turned on linenumbers, ruler, and syntax highlighting
* Made it easy to navigate wrapped lines using `<D-j>`, `<D-k>` and other movements.
* Included Fugitive on the status line
* Automatically change the working directory to the current buffer
* Added shortcuts to change windows like `<c-j>` and `<c-k>`
* Added shortcut to open .vimrc `<leader>v` and reload .vimrc `<leader>V`
* Re-mapped `;` to `:`. Fewer keystrokes FTW!
* `jj` now escapes to normal mode
* `<leader>n` toggles NERDTree
* Added Date/Time insertion shortcuts. Makes using the VimWiki diary easy to do work logs.

## Quick Plugin Help
### Align
See `:h align`

### AutoClose
Automatically inserts a closing characters.

Working characters include parentheses, square brackets, curly brackets, single quotes and double quotes. 

### Buffergator
Open the Buffergator window by pressing `<leader>b`.

Buffers can be previewed in a new tab or window.

With the Buffergator window open, use the following commands:

* `h,j,k,l` are used as movement keys
* `42<CR>` will open buffer number 42 in the previous window
* `go` to open the selected buffer but keep the focus on Buffergator

Find more commands by typing `:h buffergator` 

### Command-T
Bring up the Command-T file window by typing `<Leader>t` then start typing the name of the file you want to edit.

Once you find the desired file, open it by hitting `<CR>`

Find out more by typing `:h command-t`

### Fugitive
This is the ONLY Git wrapper you will ever need.

Call up Git commands `:Gstatus` `:Gcommit` `:Git push` etc.

`:Gstatus` will display a split window with the staged/unstaged changes. Stage the wanted files by pressing `\-`

`:Gcommit` will allow you to type a commit message. Save the commit by typing `:wq`.

More help: `:h fugitive` 

### Genutils

### Gist
`:Gist` Posts whole text to Gist.

`:'<,'>Gist` Posts the selected text to Gist.

`:Gist -a` Posts whole text to Gist anonymously.

`:Gist XXXXX` Get Gist #XXXXX

`:Gist -l` List all of your Gists

### Markdown
There are no commands for Markdown. This plugin just acts as a syntax highlighter.

### Multvals


### SnipMate
snipMate.vim aims to be an unobtrusive, concise vim script that implements some of TextMate's snippets features in Vim. A snippet is a piece of often-typed text that you can insert into your document using a trigger word followed by a <tab>.

### NERDCommenter
`<leader>cc` Comments out the current line or text selected in visual mode.

`<leader>cs` Creates a good looking comment block

`<leader>ca` Adds comment delimiters at the end of the line and goes to insert mode between them.

`<leader>cu` Uncomments the current line or selected text.

See `:h NERDComFunctionality` for more information.

### NERDTree

### Tlib

### VimWiki

### Vundle

### ZoomWin
