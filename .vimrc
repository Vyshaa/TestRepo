colorscheme elflord
set colorcolumn=80

set number

set tabstop=4
set shiftwidth=4
"set expandtab

set autoindent
set cindent

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}
inoremap {;<CR> {<CR>};
nnoremap <F2> :so ~/.vimrc<CR>
nnoremap ; A;<Esc>
nnoremap ' lbcw''<Esc>P
nnoremap " lbcw""<Esc>P
nnoremap ( lbcw()<Esc>P
nnoremap [ lbcw[]<Esc>P
nnoremap { lbcw{}<Esc>P
nnoremap <C-s> :w<CR>
inoremap <C-s> :w<CR>

"abbrev
inoreabbrev main int main()<CR>{<CR>return 0;<CR>}<up><up>
