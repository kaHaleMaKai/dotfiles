let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/java/spark/learning-spark/wordcount
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 src/main/java/com/lars/spark/learningspark/wordcount/Driver.java
badd +0 pom.xml
badd +325 ~/.vim/UltiSnips/java.snippets
badd +1 ~/.vim/UltiSnips/all.snippets
silent! argdel *
edit src/main/java/com/lars/spark/learningspark/wordcount/Driver.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 162 + 97) / 194)
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
lcd ~/java/spark/learning-spark/wordcount
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/java/spark/learning-spark/wordcount
wincmd w
argglobal
edit ~/java/spark/learning-spark/wordcount/pom.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 040|
lcd ~/java/spark/learning-spark/wordcount
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 162 + 97) / 194)
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
