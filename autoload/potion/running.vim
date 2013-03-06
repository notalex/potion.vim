echom 'Autoloading...'

function! potion#running#PotionCompileAndRunFile()
  silent !clear
  execute '!' . g:potion_command . ' ' . bufname('%')
endfunction

function! potion#running#PotionShowBytecode()

  let bytecode = system(g:potion_command . " -c -V ". bufname('%'))

  vsplit __Potion_ByteCode__
  normal! ggdG
  setlocal filetype=potion
  setlocal buftype=nofile

  call append(0, split(bytecode, '\v\n'))
endfunction

