# Channeleaton's Vim Setup

## Installed Plugins
* [Align](https://github.com/vim-scripts/Align) - Easily align text
* [AutoClose](https://github.com/vim-scripts/AutoClose) - Automatically create matching closing symbols. Saves a ton of typing.
* [Buffergator](https://github.com/vim-scripts/Buffergator) - Visual buffer managment
* [CtrlP](https://github.com/kien/ctrlp.vim) - Open files and buffers with lightning quick speed!
* [Fugitive](https://github.com/tpope/vim-fugitive) - Exceptional Git intigration for Vim
* [Genutils](https://github.com/vim-scripts/genutils) - Generally useful utilities
* [Gist](https://github.com/vim-scripts/Gist.vim) - Create and edit Gists right in Vim
* [Markdown](https://github.com/hallison/vim-markdown) - Syntax highlighting for Markdown
* [Multvals](https://github.com/vim-scripts/multvals.vim) - Dependencies
* [snipMate](https://github.com/garbas/vim-snipmate) - Save snippets for any filetype
* [snipMate-snippets](https://github.com/honza/snipmate-snippets) - Extra awesome snippets for snipMate
* [SuperTab](https://github.com/ervandew/supertab) - Insert mode Tab completion!
* [Surround](https://github.com/vim-scripts/surround.vim) - Surround your text in love...or brackets, quotation marks, etc.
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)- Comment your code like a pro.
* [NERDTree](https://github.com/scrooloose/nerdtree)- Visual folder/file navigation
* [tlib](https://github.com/tomtom/tlib_vim) - Required for SnipMate. Provides other utility functions.
* [VimWiki](https://github.com/vim-scripts/VimWiki) - Have your very own wiki inside Vim.
* [Vundle](https://github.com/gmarik/vundle) - The best Vim plugin manager
* [ZenCoding](https://github.com/mattn/zencoding-vim) - Easily create structured HTML
* [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in and out of windows

## Basic Customizations

* Changed `<leader>` to `,`
* Turned on linenumbers, ruler, and syntax highlighting
* Made it easy to navigate wrapped lines using `<D-j>`, `<D-k>` and other movements.
* Included Fugitive on the status line
* Added shortcuts to change windows like `<c-j>` and `<c-k>`
* Added shortcut to open .vimrc `<leader>v` and reload .vimrc `<leader>V`
* Re-mapped `;` to `:`. Fewer keystrokes FTW!
* `jj` now escapes to normal mode
* `<leader>n` toggles NERDTree
* Added Date/Time insertion shortcuts. Makes using the VimWiki diary easy to do work logs.
* `<Leader><Leader>` triggers `:ZoomWin`
* `:Gstatus` and `:Gcommit` have been remapped to `<Leader>gs` and `<Leader>gc` respectively
* `Cmd-T` opens the CtrlP window

## Quick Plugin Help
### Buffergator
Open the Buffergator window by pressing `<leader>b`.

* `h,j,k,l` are used as movement keys
* `42<CR>` will open buffer number 42 in the previous window
* `go` to open the selected buffer but keep the focus on Buffergator

### CtrlP
* Use `..` and the `Enter` key to navigate up a directory
* `Ctrl-v` opens the selected file in a vertical split
* `Ctrl-y` creates a new file and all associated directories
* `Ctrl b` switches to buffer search mode

### Fugitive
Call up Git commands `:Gstatus` `:Gcommit` `:Git push` etc.

`:Gstatus` will display a split window with the staged/unstaged changes. Stage the wanted files by pressing `\-`

`:Gcommit` will allow you to type a commit message. Save the commit by typing `:wq`.

### Gist
`:Gist` Posts whole text to Gist.

`:'<,'>Gist` Posts the selected text to Gist.

`:Gist -a` Posts whole text to Gist anonymously.

`:Gist XXXXX` Get Gist #XXXXX

`:Gist -l` List all of your Gists

### NERDCommenter
`<leader>cc` Comments out the current line or text selected in visual mode.

`<leader>cs` Creates a good looking comment block

`<leader>ca` Adds comment delimiters at the end of the line and goes to insert mode between them.

`<leader>cu` Uncomments the current line or selected text.

### NERDTree

### VimWiki

### Vundle

### ZenCoding
* `Ctrl-y ,` expands the preceeding text.
* `Ctrl-y n` skips to the next editing point
* `Ctrl-y m` will merge lines selected in visual mode

How does it work? If you type `html:5` then execute the keystrokes, it will expand to this: 

```html
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    _
</body>
</html>
```

You can download the Zen Coding cheatsheet [here](http://code.google.com/p/zen-coding/downloads/detail?name=ZenCodingCheatSheet.pdf)
