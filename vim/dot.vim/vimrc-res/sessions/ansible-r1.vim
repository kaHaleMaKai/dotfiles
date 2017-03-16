let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ansible/ansible-pm
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 group_vars/group_spark
badd +0 group_vars/group_clusters
badd +0 spark.yml
badd +0 site.yml
badd +204 hosts
badd +1 \'/home/lars/ansible/ansible-pm/group_vars/group_spark_nodes\'
badd +32 group_vars/group_esome_replicated_dbs
badd +0 host_vars/r1c00.pmd.local
badd +0 roles/lvm/defaults/main.yml
silent! argdel *
edit group_vars/group_spark
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 333 + 182) / 365)
exe '3resize ' . ((&lines * 66 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 110 + 182) / 365)
exe '4resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 4resize ' . ((&columns * 111 + 182) / 365)
exe '5resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 5resize ' . ((&columns * 110 + 182) / 365)
exe '6resize ' . ((&lines * 33 + 50) / 101)
exe 'vert 6resize ' . ((&columns * 111 + 182) / 365)
exe '7resize ' . ((&lines * 33 + 50) / 101)
exe 'vert 7resize ' . ((&columns * 110 + 182) / 365)
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
let s:l = 2 - ((1 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit spark.yml
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 9 - ((8 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 015|
wincmd w
argglobal
edit site.yml
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit group_vars/group_esome_replicated_dbs
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit host_vars/r1c00.pmd.local
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
enew
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
6wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 333 + 182) / 365)
exe '3resize ' . ((&lines * 66 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 110 + 182) / 365)
exe '4resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 4resize ' . ((&columns * 111 + 182) / 365)
exe '5resize ' . ((&lines * 32 + 50) / 101)
exe 'vert 5resize ' . ((&columns * 110 + 182) / 365)
exe '6resize ' . ((&lines * 33 + 50) / 101)
exe 'vert 6resize ' . ((&columns * 111 + 182) / 365)
exe '7resize ' . ((&lines * 33 + 50) / 101)
exe 'vert 7resize ' . ((&columns * 110 + 182) / 365)
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
