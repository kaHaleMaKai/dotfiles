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
badd +1 ~/python/get-types/test/__init__.py
badd +40 ~/python/get-types/test/test_get_types.py
badd +1 \'/home/lars/python/get-types/gettypes.py\'
badd +96 ~/python/get-types/gettypes.py
badd +44 ~/python/get-types/pdb-gettypes.py
badd +307 ~/.vim/UltiSnips/java.snippets
badd +1 ~/ansible/private/hosts
badd +1 ~/ansible/private/roles/oracle-java/tasks/main.yml
badd +0 ~/ansible/private/roles/vim/files/ftplugin/java.vim
badd +0 ~/tmp/complete.vim
badd +0 src/java/pmd/pacs/calculation/ImpressionsAndKPIFns.java
badd +0 /tmp/type-dict
args get_types.py
edit ~/python/get-types/gettypes.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 80 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 80 + 97) / 194)
exe '4resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 81 + 97) / 194)
exe '5resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 81 + 97) / 194)
argglobal
enew
file NERD_tree_2
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
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
56
normal! zo
57
normal! zo
let s:l = 96 - ((23 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 05|
wincmd w
argglobal
edit ~/ansible/private/roles/vim/files/ftplugin/java.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((19 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 019|
wincmd w
argglobal
edit ~/tmp/complete.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 03|
wincmd w
argglobal
edit src/java/pmd/pacs/calculation/ImpressionsAndKPIFns.java
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
normal! 0
wincmd w
4wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 80 + 97) / 194)
exe '3resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 80 + 97) / 194)
exe '4resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 81 + 97) / 194)
exe '5resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 81 + 97) / 194)
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
