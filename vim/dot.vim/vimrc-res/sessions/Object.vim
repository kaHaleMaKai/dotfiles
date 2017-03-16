let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/tmp/jparser
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/java/spark/learning-spark/wordcount/src/main/java/com/lars/exercises/pmd/DateRange.java
badd +83 ~/tmp/jparser.vim
badd +71 jparser.vim
badd +57 /tmp/f.vim
badd +3 /tmp/d.vim
badd +50 ContextObject.vim
badd +2 Object.vim
badd +8 try-s.vim
args ~/java/spark/learning-spark/wordcount/src/main/java/com/lars/exercises/pmd/DateRange.java
edit Object.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
argglobal
enew
file NERD_tree_3
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 74 - ((7 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 013|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
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
