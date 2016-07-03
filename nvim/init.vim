syntax on
set number
set hidden

let mapleader = '\'

call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'ternjs/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'elixir-lang/vim-elixir'

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" CTRL+P
let g:ctrlp_working_path_mode = 'ra'

" Define colorscheme
colorscheme dracula

" Hotkeys

map! <leader><leader> <ESC>

" \<BS -> kill buffer, \] -> next buffer, \[ -> prev buffer
nnoremap <leader><BS> :bdelete<CR>
nnoremap <leader><leader><BS> :bdelete!<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :previous<CR>

nnoremap <C-s> :w<CR>
