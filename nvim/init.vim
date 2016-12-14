syntax on
set number
set hidden

set showmatch
set ruler
set expandtab
set tabstop=2
set textwidth=0
set shiftwidth=4
set nobackup
set noswapfile

set clipboard=unnamed " Set system clipboard as default

" ---------- Splits ---------
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-w>- :split<CR>
nnoremap <C-w>\| :vsplit<CR>
" --------------------------

" Set <leader> to \
let mapleader = '\'

call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'chriskempson/base16-vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'ternjs/tern_for_vim'
Plug 'isRuslan/vim-es6'
Plug 'Valloric/YouCompleteMe'
Plug 'elixir-lang/vim-elixir'
Plug 'edkolev/tmuxline.vim'
Plug 'slashmili/alchemist.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" CTRL+P
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Define colorscheme
colorscheme dracula

" Hotkeys
map! <leader><leader> <ESC>
map! jk <ESC>
map! kj <ESC>
map! jj <ESC>

" Git Gutter
nnoremap <leader><leader>g :GitGutterToggle<CR>

" \<BS -> kill buffer, \] -> next buffer, \[ -> prev buffer
nnoremap <leader><BS> :bdelete<CR>
nnoremap <leader><leader><BS> :bdelete!<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprevious<CR>

" ControlSpace
nnoremap <silent><C-p> :CtrlSpace O<CR>
if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" Save on C-s
nnoremap <C-s> :w<CR>

" Wildmenu
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.png,*.gif,*.jpg,*.swp
set wildmode=list:longest

" Fixing missclicks
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Strip Whitespaces on save
autocmd BufWritePre * :StripWhitespace

" easymotion configuration
" bidirectional character search
map <leader>f <Plug>(easymotion-bd-f)

