if !exists('g:potion_command')
  let g:potion_command = 'potion'
endif

function! PotionCompileAndRunFile()
  silent !clear
  execute '!' . g:potion_command . ' ' . bufname('%')
endfunction

function! PotionShowBytecode()

  let bytecode = system(g:potion_command . " -c -V ". bufname('%'))

  vsplit __Potion_ByteCode__
  normal! ggdG
  setlocal filetype=potion
  setlocal buftype=nofile

  call append(0, split(bytecode, '\v\n'))
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>

nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>
