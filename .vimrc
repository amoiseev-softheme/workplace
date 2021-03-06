set nocompatible              " be iMproved, required
filetype off                  " required

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
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Table format
Plugin 'godlygeek/tabular'

" BClose
" Plugin 'vadimr/bclose.vim'

" Fast file search
Plugin 'Shougo/unite.vim'

"FileNav
Plugin 'Shougo/vimfiler.vim' 
"Bitbake support
Plugin 'https://github.com/kergoth/vim-bitbake.git'
"Powerline
"
Plugin 'https://github.com/Lokaltog/vim-powerline.git'
" Autocompletion
" Plugin 'Valloric/YouCompleteMe'


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

"Line numbers
:set number

:set tags=tags;

:let g:vimfiler_as_default_explorer = 1
:let g:vimfilter_enable_auto_cd = 1
:set nocompatible   " Disable vi-compatibility
:set laststatus=2   " Always show the statusline
:set encoding=utf-8 " Necessary to show Unicode glyphsll Vex
:set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
:set list!
:set listchars=tab:>.,trail:.,extends:\#,nbsp:.
:set hlsearch
:set colorcolumn=110
:highlight ColorColumn ctermbg=darkgray

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

:map <C-C> :VimFilerExplorer <CR>
:map <F4> :tabnew <CR>
:map <F6> :tabnext <CR>
:map <F5> :tabprev <CR>

let g:clang_library_path='/usr/lib/llvm-3.8/lib'
