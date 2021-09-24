set tabstop=2
set shiftwidth=2
set number
set guicursor=
set expandtab
set nowrap

" hide status line at the bottom
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

colo default


" language specific stuff
filetype plugin indent on
autocmd FileType go setlocal noexpandtab
autocmd FileType python setlocal tabstop=2 shiftwidth=2

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'tomlion/vim-solidity'
call plug#end()

" coloscheme configs
hi Comment ctermfg=green
let g:go_highlight_functions = 1

" fzf
map <C-p> :FZF<CR>

" to make fzf close faster
aug fzf_setup
  au!
  au TermOpen term://*FZF tnoremap <silent> <buffer><nowait> <esc> <c-c>
aug END

" nerd tree
let NERDTreeShowHidden=1
map <C-q> :NERDTreeToggle<CR>

" maximize window
map <C-k> :MaximizerToggle<CR>

" autocompletion popup navigation
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

command W write
