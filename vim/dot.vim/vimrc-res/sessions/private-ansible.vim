let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ansible/private
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 lvm.yml
badd +2 roles/lvm/tasks/vgs.yml
badd +33 group_vars/lvm
badd +0 roles/lvm/vars/main.yml
badd +0 filter_plugins/filters.py
badd +1 roles/base/tasks/main.yml
badd +13 roles/lvm/tasks/main.yml
badd +3 roles/lvm/tasks/lvs.yml
badd +3 roles/lvm/tasks/mounts.yml
badd +4 roles/lvm/tasks/resize-fs.yml
silent! argdel *
edit roles/lvm/tasks/main.yml
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
exe '2resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 81 + 97) / 194)
exe '3resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 81 + 97) / 194)
exe '4resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 80 + 97) / 194)
exe '5resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 5resize ' . ((&columns * 80 + 97) / 194)
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
let s:l = 13 - ((12 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 012|
wincmd w
argglobal
edit roles/lvm/vars/main.yml
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit group_vars/lvm
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 54 - ((21 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 019|
wincmd w
argglobal
edit filter_plugins/filters.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 97) / 194)
exe '2resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 81 + 97) / 194)
exe '3resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 81 + 97) / 194)
exe '4resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 80 + 97) / 194)
exe '5resize ' . ((&lines * 23 + 24) / 49)
exe 'vert 5resize ' . ((&columns * 80 + 97) / 194)
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
