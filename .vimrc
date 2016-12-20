" BASIC SETTING

"Syntax highlighting
if has("syntax")
	syntax on
endif

" 검색어 하이라이팅
set hlsearch
"자동 들여쓰기
set autoindent
"C언어 자동 들여쓰기
set cindent
"상태바 항상 표시
set laststatus=2
"들여쓰기 팁 크기
set shiftwidth=2
"줄번호 표시
set nu
set ruler
set softtabstop=2
set tabstop=2

" END OF personal setting
" vim Vundle Setting

set nocompatible              " be iMproved, required
filetype off                  " required
"filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" My Vundle Plugin Setting
Plugin 'The-NERD-tree'
Plugin 'Valloric/YouCompleteMe'

" YouCompleteMe Plugin Setting
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'
nnoremap g :YcmCompleter GoTo
" nnoremap gg :YcmCompleter GoToImprecise
" nnoremap d :YcmCompleter GoToDeclaration
" nnoremap t :YcmCompleter GetType
" nnoremap p :YcmCompleter GetParent 
let g:ycm_auto_trigger = 1
filetype plugin indent on
let g:ycm_min_num_of_chars_for_completion = 0 
