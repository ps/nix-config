set nocompatible
filetype indent plugin on
syntax on

set showcmd
set hlsearch
set wildmenu


set number
set ruler
set mouse=a
set autoindent


augroup collumnLimit
	autocmd!
	autocmd BufEnter,WinEnter,FileType scala,java,python
	      \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
	let collumnLimit = 79 " feel free to customize
	let pattern =
		\ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
	autocmd BufEnter,WinEnter,FileType scala,java,python
	      \ let w:m1=matchadd('CollumnLimit', pattern, -1)
augroup END

set tabstop=8 
set softtabstop=4 
set shiftwidth=4 
set expandtab

autocmd BufNewFile *.java
  \ exe "normal Opublic class " . expand('%:t:r') . " {\npublic static void main(String [] args) {\n\n}\n}\<Esc>1G"
