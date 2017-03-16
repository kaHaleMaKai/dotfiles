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
badd +1 htdocs/include/class.chunkeduploader.php
badd +0 cronjobs/adition_keywords/keyword_csv_import.php
badd +13 cronjobs/adition_tagging/tagging_csv_import.php
badd +55 cronjobs/adition_atomic_plus/hdfs-importer.php
badd +371 conf/conf.php
badd +1 htdocs/include/class.hdfs.uploader.php
argglobal
silent! argdel *
edit htdocs/include/class.chunkeduploader.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 150 + 97) / 194)
exe '3resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 150 + 97) / 194)
exe '4resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 150 + 97) / 194)
exe '5resize ' . ((&lines * 49 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 11 + 97) / 194)
exe '6resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 11 + 97) / 194)
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
let s:l = 159 - ((16 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
159
normal! 022|
wincmd w
argglobal
edit htdocs/include/class.hdfs.uploader.php
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 16 - ((6 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 038|
wincmd w
argglobal
edit ~/.vim/bundle/vim-php-manual/manual/doc/parse-url.txt
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 94 - ((31 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
94
normal! 03|
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
let s:l = 59 - ((24 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 044|
wincmd w
argglobal
edit cronjobs/adition_tagging/tagging_csv_import.php
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 85 - ((32 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
85
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 150 + 97) / 194)
exe '3resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 150 + 97) / 194)
exe '4resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 150 + 97) / 194)
exe '5resize ' . ((&lines * 49 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 11 + 97) / 194)
exe '6resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 11 + 97) / 194)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=5 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
