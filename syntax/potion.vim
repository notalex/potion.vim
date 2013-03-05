if exists('b:current_syntax')
  finish
endif

syntax keyword potionKeyword to times
syntax keyword potionKeyword if elsif else class return

syntax keyword potionFunction print join string

syntax match Comment '\v#.*$'
syntax match Operator '\v\*'
syntax match Operator '+'
syntax match Operator '-'
syntax match Operator '='

syntax region String start=/"/ skip=/\\./ end=/"/

highlight def link potionKeyword Keyword
highlight link potionFunction Function

let b:current_syntax = 'potion'
