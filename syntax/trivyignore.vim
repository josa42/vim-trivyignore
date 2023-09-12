scriptencoding utf-8

if exists('b:current_syntax')
  finish
endif

syntax keyword trivyignoreTodo TODO FIXME XXX NOTE SEE contained
syntax match trivyignoreComment '^#.*' contains=trivyignoreTodo
syntax match trivyignoreComment '\s#.*'ms=s+1 contains=trivyignoreTodo

syntax match trivyignoreOptions '[^: ]\+:[^ ]\+' contains=trivyignoreOptionKey,trivyignoreOptionDate

syntax match trivyignoreOptionKey '[^:]\+:' contained
syntax match trivyignoreOptionDate '\d\d\d\d-\d\d-\d\d' contained
"
highlight default link trivyignoreTodo Todo
highlight default link trivyignoreComment Comment
highlight default link trivyignoreOptionKey Keyword
highlight default link trivyignoreOptionDate Special

let b:current_syntax = 'trivyignore'

" vim: ts=2 et sw=2
