" A vim config


" Startup  {{{
" ============================================================================

set nocompatible                    " use Vim settings, not Vi settings

" }}}

" Vim-plug {{{
" ===========================================================================
" (minimalist plugin manager)

let s:myvimdir ="~/.vim"

" Install Vim-Plug at startup if it isn't installed
if !filereadable(expand(s:myvimdir . "/autoload/plug.vim"))
  echo "Installing Vim-Plug and plugins,"
  echo "restart Vim to finish installation."
  silent! call mkdir(expand(s:myvimdir . "/autoload"), 'p')
  silent! execute "!curl -fLo ".expand(s:myvimdir . "/autoload/plug.vim")
        \ ." https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  au VimEnter * PlugInstall
endif

call plug#begin()

" }}}

" Plugins {{{
" ============================================================================

Plug 'justinmk/vim-syntax-extra'    " improved C syntax highlighting
Plug 'flazz/vim-colorschemes'       " all vim colorschemes:d
Plug 'nightsense/seabird'    
Plug 'mhinz/vim-Startify'           " startup screen
Plug 'junegunn/vim-easy-align'      " text alignment plugin
Plug 'scrooloose/Syntastic'         " real time error checking
Plug 'ctrlpvim/ctrlp.vim'           " fuzzy search
Plug 'ervandew/supertab'            " tab autocompletion
Plug 'jelera/vim-javascript-syntax' " JavaScript syntax checking
Plug 'vim-airline/vim-airline-themes' "Airline themes
Plug 'vim-airline/vim-airline'      " Airline
Plug 'junegunn/goyo.vim'            " Distraction Free mode
call plug#end()

" }}}

" Plugin settings {{{
" ============================================================================

" lightline
" toggle lightline
nnoremap <silent> <leader>l :exec lightline#toggle()<cr>

" airline
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
let g:airline_section_warning = airline#section#create([ "syntastic" ])
let g:airline#extensions#branch#empty_message  = "No SCM"
let g:airline#extensions#whitespace#enabled    = 0
let g:airline#extensions#syntastic#enabled     = 1
let g:airline#extensions#tabline#enabled       = 1
let g:airline#extensions#tabline#tab_nr_type   = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse = 1 "/a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   = 1 " git gutter


" }}}

" Keybindings {{{
"=============================================================================

map <C-m> :NERDTreeToggle<CR>

" }}}

" Appearance {{{
" ============================================================================

colorscheme greygull                " default color scheme
syntax enable                       " enable syntax processing
set number                          " show line numbers
set cursorline                      " highlight current line
filetype indent on                  " load filetype-specific indent files
filetype plugin on                  " load filetype-specific plugin files
set wildmenu                        " visual autocomplete for command menu
set showmatch                       " highlight matching [{("''")}]
set laststatus=2                    " show airline
set noshowmode                      " no duplicate mode

set title

" }}}

" Spaces & Tabs {{{
" ============================================================================

set tabstop=4                       " number of spaces per TAB
set softtabstop=4                   " number of spaced per TAB in edit mode
set expandtab                       " TABs are spaces, not tabs
set autoindent                      " turns on autoindent
set smartindent                     " better autoindenting
set cindent
set shiftwidth=4


" }}}

" Searching {{{
" ============================================================================

set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches

  " turn off search highlights, mapped to ( ,<space> )
  nnoremap <leader><space> :nohlsearch<CR>

" }}}

" Folding {{{
" ============================================================================

set foldenable                      " enable folding
set foldlevelstart=0                " always fold
set foldnestmax=10                  " nested fold max
set foldmethod=marker               " marker based method of folding

" }}}

