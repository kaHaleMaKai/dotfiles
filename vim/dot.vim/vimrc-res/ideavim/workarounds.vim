" will be replaced as soon as onoremap works
nnoremap civ ci[
nnoremap div di[
nnoremap yiv yi[
nnoremap cav ca[
nnoremap dav da[
nnoremap yav ya[

" easy system clipboard copy/paste
noremap "+y "*y
noremap "+Y "*Y
noremap "+p "*p
noremap "+P "*P


" built-in navigation to navigated items works better
nnoremap <c-o> :action Back<cr>
nnoremap <c-i> :action Forward<cr>
" but preserve ideavim defaults
nnoremap g<c-o> <c-o>
nnoremap g<c-i> <c-i>
