" Enter new millenium
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

set relativenumber

""
"" Shortcuts
""
"""" Latex
autocmd FileType tex nnoremap \o :w<CR>:! latexrun %<CR>
autocmd FileType tex nnoremap \p :! zathura %:r.pdf &<CR><CR>
""""

" call plug#begin('~/.vim/plugged')

" Plug 'lervag/vimtex'

""
"" Vimtex configuration
""
" let g:vimtex_view_general_viewer = 'Zathura'
