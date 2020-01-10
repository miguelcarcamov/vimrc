set number

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


" Tab navigation.
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
"nnoremap <C-F4>    :tabclose<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
"inoremap <C-F4>    <Esc>:tabclose<CR>

nnoremap <silent> <S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <S-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
