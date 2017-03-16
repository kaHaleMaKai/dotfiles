let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/presentations/reveal.js
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 ~/Documents/presentations/mysql-optimization.md
badd +1 reveal.html
badd +455 ~/.vim/UltiSnips/java.snippets
badd +1 ~/.vim/UltiSnips/snippets.snippets
badd +1 \'/home/lars/.vim/UltiSnips/markdown.snippets\'
badd +1 ~/.vim/UltiSnips/markdown.snippets
args ~/Documents/presentations/mysql-optimization.md
edit ~/Documents/presentations/mysql-optimization.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 136) / 273)
exe '2resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 2resize ' . ((&columns * 241 + 136) / 273)
exe '3resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 3resize ' . ((&columns * 120 + 136) / 273)
exe '4resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 4resize ' . ((&columns * 120 + 136) / 273)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/.vim/UltiSnips/markdown.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 037|
wincmd w
argglobal
edit ~/.vim/UltiSnips/snippets.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 136) / 273)
exe '2resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 2resize ' . ((&columns * 241 + 136) / 273)
exe '3resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 3resize ' . ((&columns * 120 + 136) / 273)
exe '4resize ' . ((&lines * 36 + 37) / 75)
exe 'vert 4resize ' . ((&columns * 120 + 136) / 273)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
