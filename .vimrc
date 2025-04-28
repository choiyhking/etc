" Basic setup
set nocompatible          " Use Vim (not Vi) behavior
syntax on                 " Enable syntax highlighting

" Line numbers
set number                " Show absolute line numbers

" Tabs and indentation
set tabstop=4             " A tab character is displayed as 4 spaces
set shiftwidth=4          " Indentation uses 4 spaces
set softtabstop=4         " Pressing Tab inserts 4 spaces
set expandtab             " Use spaces instead of tabs
set autoindent            " Copy indentation from current line
set smartindent           " Smarter indentation for code
set cindent               " C-style indentation
set smarttab              " Make Tab key smarter in insert mode

" Search behavior
set ignorecase            " Ignore case in searches
set smartcase             " Override ignorecase if search includes uppercase
set hlsearch              " Highlight search results
set incsearch             " Show matches as you type
" Clear search highlight using Ctrl + h
nnoremap <silent> <C-h> :nohlsearch<CR>

" UI enhancements
set ruler                 " Show cursor position
set showmatch             " Briefly jump to matching bracket
set laststatus=2          " Always show the status line

" File and buffer behavior
set autoread              " Auto reload files if changed outside Vim

" Restore cursor to last position when reopening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
