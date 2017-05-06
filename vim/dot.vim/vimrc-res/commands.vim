" Return Final statement as string. {{{1
"
" arguments:
" ...a:1 string -- name of variable to be set
" ...a:2 string -- equals token
" ...a:3... strings -- value representation to be assigned to variable
func! s:FinalAsString(...)
  if a:0 < 3
    throw 'ArgumentError: too few arguments given'
  else
    let var = a:1
    let eq = a:2
    let val = a:000[2:]
    if !IsString(var)
      throw 'TypeError: first argument must be string'
    elseif type(eq) != g:str
      throw 'TypeError: second argument must be string'
    elseif eq != '='
      throw 'ValueError: second argument must be "="'
    endif
    let expr = 'if exists("'.var.'")'
          \ .  '|   throw "VariableIsDefinedError: '.var.' has already been defined"'
          \ .  '| else'
          \ .  '|   let '.var.' = ' . join(val, ' ')
          \ . ' |   lockvar! '.var
          \ . ' | endif'
    return expr
endfunc
" 1}}}

" Return Mutate statement as string. {{{1
"
" arguments:
" ...a:1 string -- name of variable to be mutated
" ...a:2 string -- '->' token
" ...a:3...a:000[-1] strings -- value representation to be assigned to variable
" ...a:000[-1] boolean -- bang argument as boolean
func! s:MutateAsString(...)
  if a:0 < 3
    throw 'ArgumentError: too few arguments given'
  else
    let var = a:1
    let eq = a:2
    let val = a:000[2:-2]
    let bang = a:000[-1]
    if !bang
      throw 'SyntaxError: Mutate command must be called with bang'
    elseif !IsString(var)
      throw 'TypeError: first argument must be string'
    elseif !IsString(eq)
      throw 'TypeError: second argument must be string'
    elseif eq != '->'
      throw 'ValueError: second argument must be "->"'
    endif
    let expr = 'if !exists("'.var.'")'
          \ .  '|   throw "VariableIsUndefinedError: '.var.' has not been defined yet"'
          \ .  '| else'
          \ .  '|   unlockvar! '.var
          \ .  '|   let '.var.' = ' . join(val, ' ')
          \ .  '|   lockvar! '.var
          \ .  '| endif'
    return expr
endfunc
" 1}}}

" Final statement sets variable if not defined and locks it. {{{1
"
" syntax:
" Final var = value
"
" @throws TypeError, ValueError
command!
      \ -nargs=+
      \ Final
      \ :exe <sid>FinalAsString(<f-args>)
" 1}}}

" :Mutate statement mutates value of variable. {{{1
"
" syntax:
" Mutate! var -> new_value
"
" @throws SyntaxError, TypeError, ValueError
command!
      \ -nargs=+
      \ -bang
      \ Mutate
      \ :exe <sid>MutateAsString(<f-args>, <bang>0)
" 1}}}

" :Inc {{{1
" increment all non-negative integer numbers in range
"
" usage:
"   :[<range>]Inc [increment]
"   range: default "."
"   increment: default 1
command!
      \ -range
      \ -nargs=?
      \ Inc
      \ :exe <line1>.','.<line2>.'s/\(-\?\d\+\)\(\.\d*\)\?/\=(len(submatch(2)) == 0 ? str2nr(submatch(0)) : str2float(submatch(0)))'.'+'.(<q-args> == '' ? '1' : <q-args>).'/g'
" 1}}}

" :Dec {{{1
" Decrement all non-negative integer numbers in range
"
" usage:
"   :[<range>]Dec [decrement]
"   range: default "."
"   decrement: default 1
command!
      \ -range
      \ -nargs=?
      \ Dec
      \ :exe <line1>.','.<line2>.'s/-\?[0-9]\+/\=str2nr(submatch(0))-'.(<q-args> == '' ? '1' : <q-args>).'/g'
" 1}}}

" truncate all non-leading spaces between first and last line given {{{1
function! s:TruncateSpaces(first, last)
  let pos = getpos(".")
  let [first, last] = Order(a:first, a:last)
  let search_reg = @/
  silent! exe first . ',' . last . 's/\(^\|\s\)\@<!\(\s\+\)/\1 /g'
  let @/ = search_reg
  call setpos(".", pos)
endfunc
" 1}}}

" :TruncateSpaces {{{1
" truncate all non-leading spaces in range
"
" usage:
"   :[<range>]TruncateSpaces
"   range: default "."
command!
      \  -range
      \  -nargs=0
      \  TruncateSpaces
      \  :silent! call <sid>TruncateSpaces(<line1>, <line2>)
" 1}}}

func! s:HawaiianMappings() abort "{{{
  inoremap ¨A Ā
  inoremap ¨a ā
  inoremap ¨E Ē
  inoremap ¨e ē
  inoremap ¨I Ī
  inoremap ¨i ī
  inoremap ¨O Ō
  inoremap ¨o ō
  inoremap ¨U Ū
  inoremap ¨u ū
  inoremap ä ʻ
endfunc "}}}

command!
      \ -nargs=0
      \ HawaiianBingings
      \ :silent! call <sid>HawaiianMappings()

"command!
      "\ :silent! call <sid>GotoPreviousFile()

" vim: foldmethod=marker

func! s:InGitRepo() abort "{{{
  return finddir('.git', '.;', 1) != ''
endfunc "}}}

" Likewise, Files command with preview window
command!
      \ -bang
      \ -nargs=?
      \ -complete=dir FzfFiles
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command!
      \ -bang
      \ -nargs=*
      \ Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)


" Rg including .gitignore'd files
command!
      \ -bang
      \ -nargs=*
      \ Rgu
      \ call fzf#vim#grep(
      \   'rg -u --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)


func! s:FuzzyFindFiles(bang, ...) abort "{{{
  let command = s:InGitRepo() ? 'GitFiles' : 'FzfFiles'
  exe command
        \ . (a:bang ? '!' : '') . ' '
        \ . join(a:000)
endfunc "}}}

command!
      \ -nargs=?
      \ FuzzyFindFiles
      \ call <sid>FuzzyFindFiles(<bang>0, <q-args>)

" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep('git grep --line-number '.shellescape(<q-args>), 0, <bang>0)

nnoremap <silent> <C-p> :FuzzyFindFiles<CR>
nnoremap <silent> <leader>ff :FzfFiles<CR>
