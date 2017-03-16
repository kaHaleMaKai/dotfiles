cmap w!! w !sudo tee > /dev/null %
nnoremap <silent> <space> :nohlsearch<CR>
nnoremap <silent> * :7wincmd +<CR>
nnoremap <silent> + :7wincmd -<CR>
nnoremap <silent> _ :7wincmd ><CR>
nnoremap <silent> - :7wincmd <<CR>

nnoremap <silent> <C-m> :silent normal! <C-l><CR>
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <silent> ]q :cn<CR>
nnoremap <silent> [q :cp<CR>
nnoremap <silent> gT :tabnew %<CR>
nnoremap <silent> gtn :tabn<CR>:
nnoremap <silent> gtp :tabp<CR>:
nnoremap <silent> gqc :call setqflist([]) \| exe bufnr('quickfix').'wincmd w' \| wincmd c \| wincmd p<CR>

" have square brackets side to side with parens and braces
onoremap iv i[
onoremap av a[
inoremap <silent> <C-g> <Esc>

nnoremap <silent> GS :Gstatus<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
nnoremap <silent> <leader>nsf :NERDTreeFind<CR> \| :wincmd p<CR>
nnoremap <silent> <leader>ng :NERDTreeGitRoot<CR>
nnoremap <silent> <leader>nF :NERDTreeGitRootFind<CR>
nnoremap <silent> <leader>nsF :NERDTreeGitRootFind<CR> \| :wincmd p<CR>
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
nnoremap <silent> gs :GitGutterStageHunk<CR>
nnoremap <silent> gr :GitGutterRevertHunk<CR>
nnoremap <silent> gtt :TlistToggle<CR>
