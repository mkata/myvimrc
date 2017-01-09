set noswapfile
set nobackup
set viminfo=
set noundofile
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set clipboard=unnamed,autoselect

autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class                         

"------------------------------------------------------------
" jedi-vimの設定
" autocmd FileType python setlocal omnifunc=jedi
" let g:jedi#auto_vim_configuration = 0
" autocmd FileType python setlocal completeopt-=preview

"------------------------------------------------------------
" vim-indent-guidesの設定
let g:indent_guides_guide_size = 1

"------------------------------------------------------------
" deinの設定
if &compatible
	set nocompatible
endif

set runtimepath+=C:/Users/km/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand("C:/Users/km/.vim/dein"))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('Shougo/unite.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#end()

if dein#check_install()
	call dein#install()
endif

filetype plugin indent on
