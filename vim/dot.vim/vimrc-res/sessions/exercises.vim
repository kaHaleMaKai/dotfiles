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
badd +1 src/main/java/com/lars/exercises/pmd/Pricing.java
badd +10 src/main/java/com/lars/exercises/pmd/ContentunitPricing.java
badd +7 src/main/java/com/lars/exercises/pmd/ContentunitPricingEntries.java
badd +7 src/main/java/com/lars/exercises/pmd/ContentunitPricingEntry.java
badd +16 src/test/java/com/lars/exercises/pmd/ContentunitPricingEntryTest.java
badd +11 src/test/java/com/lars/exercises/pmd/ContentunitPricingTest.java
badd +30 src/test/java/com/lars/exercises/pmd/ContentunitPricingEntriesTest.java
silent! argdel *
edit src/main/java/com/lars/exercises/pmd/ContentunitPricingEntries.java
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
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 44 + 51) / 102)
exe 'vert 2resize ' . ((&columns * 166 + 182) / 365)
exe '3resize ' . ((&lines * 44 + 51) / 102)
exe 'vert 3resize ' . ((&columns * 166 + 182) / 365)
exe '4resize ' . ((&lines * 55 + 51) / 102)
exe 'vert 4resize ' . ((&columns * 333 + 182) / 365)
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
let s:l = 7 - ((1 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 056|
wincmd w
argglobal
edit src/test/java/com/lars/exercises/pmd/ContentunitPricingEntriesTest.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
edit src/main/java/com/lars/exercises/pmd/ContentunitPricing.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/java/spark/learning-spark/wordcount
wincmd w
4wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 44 + 51) / 102)
exe 'vert 2resize ' . ((&columns * 166 + 182) / 365)
exe '3resize ' . ((&lines * 44 + 51) / 102)
exe 'vert 3resize ' . ((&columns * 166 + 182) / 365)
exe '4resize ' . ((&lines * 55 + 51) / 102)
exe 'vert 4resize ' . ((&columns * 333 + 182) / 365)
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
