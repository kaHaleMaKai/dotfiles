let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /usr/local/repos/pacs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +27 htdocs/include/class.hdfs.uploader.php
badd +95 htdocs/include/class.ftp.client.php
badd +1 htdocs/include/class.chunkeduploader.php
argglobal
silent! argdel *
edit htdocs/include/class.hdfs.uploader.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 182 + 182) / 365)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 365)
argglobal
setlocal fdm=expr
setlocal fde=GetPhpFold(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
8
normal! zo
let s:l = 35 - ((34 * winheight(0) + 49) / 99)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
wincmd w
argglobal
edit htdocs/include/class.chunkeduploader.php
setlocal fdm=expr
setlocal fde=GetPhpFold(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=13
setlocal fml=1
setlocal fdn=20
setlocal fen
17
normal! zo
129
normal! zo
let s:l = 134 - ((49 * winheight(0) + 49) / 99)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
134
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 182 + 182) / 365)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 365)
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
