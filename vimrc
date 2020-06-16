" 显示行号
set nu
" 语法高亮
syntax on
" 高亮搜索匹配
set hls
" 备份
set backup
set backupdir=~/.vim/vimbackup

" 交换文件
set swapfile
set dir=~/.vim/vimswap

" undo
if has('persistent_undo')
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
  set undofile                " So is persistent undo ...
  set undodir=~/.vim/vimundo/
endif

" 关闭兼容模式
set nocompatible
" vi兼容，这样就会出现无法删除此次插入前文字
set backspace=indent,eol,start
filetype off

" TAB使用4个空格进行代替
" 设置空格字符代替tab键
"set expandtab
" 设置多少空格字符数量代替tab键
set tabstop=4
set softtabstop=4
"自动缩进使用的空格字符数量
set shiftwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree 文件系统浏览文件
Bundle 'scrooloose/nerdtree'
"DTreeQuitOnOpen=1 
"automatically close NERDTree after a file has been opened
"automatically close NERDTree wheen close file and no files open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
map <Tab> <C-w>w

" vim-airline状态增强软件
Bundle 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
