"Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

"Plugins
NeoBundle 'bling/vim-airline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-git'
NeoBundle 'ervandew/supertab'
NeoBundle 'wincent/Command-T'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'alfredodeza/pytest.vim'
NeoBundle 'reinh/vim-makegreen'
NeoBundle 'vim-scripts/TaskList.vim'
NeoBundle 'vim-scripts/The-NERD-tree'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'klen/python-mode'
NeoBundle 'heavenshell/vim-pydocstring'
NeoBundle 'vim-scripts/bash-support.vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'marcweber/vim-addon-mw-utils'
NeoBundle 'wesQ3/vim-windowswap'
NeoBundle 'JarrodCTaylor/vim-python-test-runner'
NeoBundle 'nose-devs/nose'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Color Options
syntax enable
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme murmur
"colorscheme Monokai

"Airline options
set laststatus=2
let g:airline_powerlines_fonts = 1
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

"Use spaces rather than tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" TaskList
nnoremap <leader>v <Plug>TaskList

" ropevim
let ropevim_vim_completion=1
let g:ropevim_autoimport_modules = ["os", "shutil"]

set clipboard=unnamed

" language
set spell spelllang=en,pl

" split navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
