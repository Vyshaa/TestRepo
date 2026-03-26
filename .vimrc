"":"so $VIMRUNTIME/syntax/colortest.vim
colorscheme elflord
set colorcolumn=80
highlight ColorColumn ctermbg=darkmagenta

set number
set splitright

set tabstop=4
set shiftwidth=4
"set expandtab

set autoindent
set cindent

"close brackets
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}

"wrap brackets
nnoremap ' lbcw''<Esc>P
nnoremap " lbcw""<Esc>P
nnoremap ( lbcw()<Esc>P
nnoremap [ lbcw[]<Esc>P
nnoremap { lbcw{}<Esc>P

"save
nnoremap <C-s> :w<CR>
inoremap <C-s> :w<CR>

"standalone remaps
nnoremap <F2> :so ~/.vimrc<CR>
inoremap <c-@> <c-n>
nnoremap ; A;<Esc>
nnoremap <c-t> :vertical :terminal<cr>
nnoremap <c-x> :Ex<cr>

"abbrev
inoreabbrev main int main()<CR>{<CR>return 0;<CR>}<up><up>
inoreabbrev malloc malloc(sizeof() * );<CR>if ( == NULL)<CR>return (-1);
	\<esc><up><up>bbbbbyiw<down>wp<up>
inoreabbrev .h <esc>BcW#include ""<esc><left>p<right>i.h<end>

"autocommand
autocmd BufNewFile *.c *.h :Stdheader "include 42 header when creating a file
autocmd BufWritePre * :%s/[ \t]\+$//e "remove trailing spaces and tabs
