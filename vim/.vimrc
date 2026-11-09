set belloff=all

if has("syntax")
	syntax on
endif

" Vim jumps to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Vim loads identation rules and plugins according to the detected filetype
filetype plugin indent on

" Do case insensitive matching
set ignorecase

" Source of global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
