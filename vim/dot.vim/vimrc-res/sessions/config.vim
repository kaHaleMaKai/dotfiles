let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /usr/local/repos/spark/utils/config
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +7 src/main/java/pmd/pacs/config/App.java
badd +0 src/main/java/pmd/pacs/config/IOUtil.java
badd +1 pom.xml
badd +5 src/main/java/pmd/config/pacs/IOUtil.java
badd +0 src/main/java/pmd/config/pacs/Config.java
silent! argdel *
edit src/main/java/pmd/config/pacs/IOUtil.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 80 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 81 + 97) / 194)
exe '4resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 162 + 97) / 194)
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 024|
lcd /usr/local/repos/spark/utils/config
wincmd w
argglobal
edit /usr/local/repos/spark/utils/config/src/main/java/pmd/config/pacs/Config.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 026|
lcd /usr/local/repos/spark/utils/config
wincmd w
argglobal
edit /usr/local/repos/spark/utils/config/pom.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 91 - ((14 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
91
normal! 016|
lcd /usr/local/repos/spark/utils/config
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 80 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 81 + 97) / 194)
exe '4resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 162 + 97) / 194)
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
