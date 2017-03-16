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
badd +390 site.yml
badd +1 roles/kerberos-server/tasks/main.yml
badd +0 ~/.vim/UltiSnips/j2.snippets
badd +1 \'/home/lars/.vim/UltiSnips/yaml.snippets\'
badd +0 ~/.vim/UltiSnips/yaml.snippets
badd +105 NERD_tree_3
badd +4 roles/kerberos-server/kerberos-client/tasks/main.yml
badd +6 roles/kerberos-client/tasks/main.yml
badd +1 roles/kerberos-server/templates/hdp-krb5.conf.j2
badd +0 group_vars/group_cluster_42
badd +11 roles/kerberos-server/templates/hdp-kdc.conf.j2
silent! argdel *
edit roles/kerberos-server/tasks/main.yml
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
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 82 + 182) / 365)
exe '3resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 83 + 182) / 365)
exe '4resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 83 + 182) / 365)
exe '5resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 83 + 182) / 365)
exe '6resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 82 + 182) / 365)
exe '7resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 7resize ' . ((&columns * 333 + 182) / 365)
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
let s:l = 14 - ((13 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 021|
wincmd w
argglobal
edit roles/kerberos-server/templates/hdp-kdc.conf.j2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 025|
wincmd w
argglobal
edit roles/kerberos-server/templates/hdp-krb5.conf.j2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 034|
wincmd w
argglobal
edit group_vars/group_cluster_42
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 165 - ((58 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
165
normal! 032|
wincmd w
argglobal
edit site.yml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 379 - ((35 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
379
normal! 09|
wincmd w
argglobal
edit ~/.vim/UltiSnips/yaml.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 72 - ((29 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
normal! 04|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 82 + 182) / 365)
exe '3resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 83 + 182) / 365)
exe '4resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 83 + 182) / 365)
exe '5resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 83 + 182) / 365)
exe '6resize ' . ((&lines * 61 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 82 + 182) / 365)
exe '7resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 7resize ' . ((&columns * 333 + 182) / 365)
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
