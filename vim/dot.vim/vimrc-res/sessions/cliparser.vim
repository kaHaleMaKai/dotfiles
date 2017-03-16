let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/java/cliargs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 1/src/main/java/org/cliargs/App.java
badd +1 \'/home/lars/java/cliargs/pom.xml\'
badd +25 pom.xml
badd +1 \'/home/lars/java/cliargs/1/src/main/java/org/cliargs/CliParser.java\'
badd +1 1/src/main/java/org/cliargs/CliParser.java
badd +0 src/org/cliargs/CliParser.java
badd +2 src/main/java/org/cliargs/App.java
badd +4 /tmp/Parameter.java
badd +116 /tmp/JCommander.java
badd +1 \'/home/lars/java/cliargs/src/main/java/org/cliargs/CliArgsParser.java\'
badd +0 src/main/java/org/cliargs/CliArgsParser.java
badd +0 .classpath
silent! argdel *
edit src/main/java/org/cliargs/CliArgsParser.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
exe '3resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 80 + 97) / 194)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 81 + 97) / 194)
exe '5resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 162 + 97) / 194)
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
let s:l = 3 - ((2 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
edit src/main/java/org/cliargs/App.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 036|
wincmd w
argglobal
edit .classpath
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 03|
wincmd w
argglobal
edit pom.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((6 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 010|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 162 + 97) / 194)
exe '3resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 80 + 97) / 194)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 81 + 97) / 194)
exe '5resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 162 + 97) / 194)
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
