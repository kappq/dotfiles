set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" TokyoNight colorscheme
Plugin 'folke/tokyonight.nvim'

" Status bar
Plugin 'itchyny/lightline.vim'

" Auto-completion
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" Auto-pairs
Plugin 'jiangmiao/auto-pairs'

" Surround
Plugin 'tpope/vim-surround'

" File browser
Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on

" Set relative numbers
set number relativenumber

" Remove `-- INSERT --` label
set noshowmode

" Set horizontal scrolling
set nowrap

" Disable italics
let g:tokyonight_italic_comments = 0
let g:tokyonight_italic_keywords = 0
let g:tokyonight_italic_functions = 0
let g:tokyonight_italic_variables = 0

" Set transparent background
let g:tokyonight_transparent = 1

" Change the colorscheme style
let g:tokyonight_style = "night"

" Set colorscheme
colorscheme tokyonight

" Set bar colorscheme
let g:lightline = {'colorscheme': 'tokyonight'}

" Toggle NERDTree
nmap <F6> :NERDTreeToggle<CR>

" Edit vertical separator
set fillchars+=vert:\|

" Navigate between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Navigate between problems
nmap <c-n> :call CocAction('diagnosticNext')<CR>
nmap <c-p> :call CocAction('diagnosticPrevious')<CR>

" Open NERDTree on the right
let g:NERDTreeWinPos = "right"
