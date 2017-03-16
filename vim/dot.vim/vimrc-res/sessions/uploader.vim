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
badd +45 htdocs/include/class.fileimporter.php
badd +223 htdocs/include/class.dbloggingfileimporter.php
badd +61 cronjobs/facebook/pb_facebook_video_ad_extension_checker.php
badd +0 cronjobs/adition_keywords/keyword_csv_import.php
badd +11 htdocs/include/class.chunkeduploader.php
argglobal
silent! argdel *
edit htdocs/include/class.dbloggingfileimporter.php
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
exe 'vert 1resize ' . ((&columns * 182 + 182) / 365)
exe '2resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 365)
exe '3resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 182 + 182) / 365)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 302 - ((96 * winheight(0) + 49) / 99)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
302
normal! 07|
wincmd w
argglobal
edit cronjobs/adition_keywords/keyword_csv_import.php
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 68 - ((33 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
68
normal! 0
wincmd w
argglobal
edit htdocs/include/class.chunkeduploader.php
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 74 - ((9 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 033|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 182 + 182) / 365)
exe '2resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 182 + 182) / 365)
exe '3resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 182 + 182) / 365)
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
