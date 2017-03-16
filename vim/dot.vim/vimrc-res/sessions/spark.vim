let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /usr/local/repos/spark/service/enrich-performance-data
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +40 src/java/pmd/pacs/calculation/ImpressionsAndKPIFns.java
badd +12 src/java/pmd/pacs/model/PDIIdentifier.java
badd +25 test/java/pmd/pacs/calculation/EnrichPDITest.java
badd +13 test/java/pmd/pacs/calculation/FilterPDIsTest.java
badd +1 src/java/pmd/pacs/Driver.java
badd +0 src/java/pmd/pacs/write2db/DBWritePreraw.java
badd +1 /usr/local/repos/spark/service/gorrilarepl/resources/public/jslib/codemirror-4.5/mode/smarty/index.html
badd +23 /tmp/filter-qf.vim
silent! argdel *
edit src/java/pmd/pacs/calculation/ImpressionsAndKPIFns.java
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 24 + 51) / 102)
exe '2resize ' . ((&lines * 24 + 51) / 102)
exe '3resize ' . ((&lines * 24 + 51) / 102)
exe '4resize ' . ((&lines * 25 + 51) / 102)
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
let s:l = 40 - ((9 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 042|
wincmd w
argglobal
edit test/java/pmd/pacs/calculation/EnrichPDITest.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 50 - ((18 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 020|
wincmd w
argglobal
edit src/java/pmd/pacs/write2db/DBWritePreraw.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 195 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
195
normal! 052|
wincmd w
argglobal
edit src/java/pmd/pacs/model/PDIIdentifier.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 015|
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 24 + 51) / 102)
exe '2resize ' . ((&lines * 24 + 51) / 102)
exe '3resize ' . ((&lines * 24 + 51) / 102)
exe '4resize ' . ((&lines * 25 + 51) / 102)
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
