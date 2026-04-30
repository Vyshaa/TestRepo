":so $VIMRUNTIME/syntax/colortest.vim
colorscheme elflord
set colorcolumn=80
highlight ColorColumn ctermbg=darkmagenta
highlight Normal ctermbg=black
highlight Terminal ctermbg=black

filetype on
set shell=fish
set nohlsearch
set number
set splitright
set splitbelow

"autocomplete
set autocomplete
set complete=.^5,w^5,b^5,u^5
set completeopt=popup

inoremap <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set tabstop=4
set shiftwidth=4
"set "expandtab"expandtab

set autoindent
set cindent

"close brackets
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap (; ();<left><left>
inoremap (: ():<left><left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}
inoremap {;<CR> {<CR>};<ESC>O

"wrap brackets
nnoremap ' lbcw''<Esc>P
nnoremap " lbcw""<Esc>P
nnoremap ( lbcw()<Esc>P
nnoremap [ lbcw[]<Esc>P
nnoremap { lbcw{}<Esc>P
xnoremap ' c''<Esc>P
xnoremap " c""<Esc>P
xnoremap ( c()<Esc>P
xnoremap [ c[]<Esc>P
xnoremap { c{}<Esc>P

"save
nnoremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>

"standalone remaps
nnoremap <F2> :so ~/.vimrc<CR>
inoremap <c-@> <c-n>
nnoremap ; A;<Esc>
nnoremap <c-t> :vertical :terminal<cr>
nnoremap <c-x> :Ex<cr>

"abbrev
augroup C
    autocmd!
    autocmd FileType c inoreabbrev <buffer> main int main()<CR>{<CR>return 0;<CR>}<up><up>
	autocmd FileType c inoreabbrev <buffer> h <esc>BcW#include ""<esc><left>p<right>i.h<end>
	autocmd FileType c inoreabbrev <buffer> < <esc>BcW#include <lt>><esc><left>p<right>i.h<end>
augroup END

augroup markdown
	autocmd!
	autocmd FileType markdown inoreabbrev <buffer> . .<br />
augroup END

augroup html
	autocmd!
	autocmd FileType html inoremap <buffer> <lt>> <esc>BcW<lt>><lt>/><esc>bpwllpbbli
augroup END

"autocommand
autocmd BufNewFile *.c,*.h :silent! Stdheader "include 42 header when creating a file
autocmd BufWritePre * :%s/[ \t]\+$//e "remove trailing spaces and tabs
