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
badd +174 spark.yml
badd +1 group_vars/drill
badd +55 group_vars/group_spark
badd +37 ansible.cfg
badd +1 roles/manage-users-and-groups/tasks/main.yml
badd +3 roles/manage-users-and-groups/defaults/main.yml
badd +50 group_vars/group_cluster_42
badd +36 host_vars/webdev.pmd5.org
badd +24 host_vars/pacs.pmd.local
badd +5 host_vars/jenkins.pmd.local
badd +147 hosts
badd +13 roles/kerberos-keytabs/files/create-keytab.sh
badd +1 host_vars/redmine2.pmd.local
badd +1 host_vars/r2c01.pmd.local
badd +1 group_vars/group_spark_manager_nodes
badd +1 ~/ansible/ansible-pm/group_vars/group_spark_gateways
badd +1 ~/ansible/ansible-pm/group_vars/group_spark_namenodes
badd +1 ~/ansible/ansible-pm/group_vars/group_spark_datanodes
badd +1 ~/ansible/ansible-pm/group_vars/group_spark_nodes
argglobal
silent! argdel *
edit group_vars/group_spark
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
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 166 + 182) / 365)
exe '3resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 166 + 182) / 365)
exe 'vert 4resize ' . ((&columns * 166 + 182) / 365)
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
let s:l = 76 - ((1 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
76
normal! 07|
wincmd w
argglobal
edit hosts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 147 - ((24 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
147
normal! 020|
wincmd w
argglobal
edit roles/manage-users-and-groups/tasks/main.yml
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 55 - ((54 * winheight(0) + 49) / 99)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
55
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 182) / 365)
exe '2resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 166 + 182) / 365)
exe '3resize ' . ((&lines * 49 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 166 + 182) / 365)
exe 'vert 4resize ' . ((&columns * 166 + 182) / 365)
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
