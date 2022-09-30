"vim syntax file initialize language
" Maintainer: koben
" Author:     GARSEC (Garuda Security)
" Update:     2022-17-9 09:49:10
" Groups:     telegram vim indonesia: https://t.me/VimID

"ketika file syntax sudah dimuat akan keluar
if exists('b:current_syntax')
  "pengguna java
  "-------------------------------------------------------------
  syntax keyword javaStatement System out println
  syntax keyword javaStatement String
  syntax keyword javaStatement new instanceof
  syntax keyword javaStatement public class static
  syntax keyword javaBoolean true false
  syntax match javaClassDecl "\(\w\+\s\?{\@=\)\+"
  syntax match javaFuncDef "\(\s\w\+(\@=\)\+"
  syntax match javaFuncDef "\(\.\@!\w\+(\@=\)"
	
  "pengguna c
  "-------------------------------------------------------------
	
  "pengguna c++
  "-------------------------------------------------------------
	
  "pengguna javascript
  "-------------------------------------------------------------
  finish
endif
hi link javaStatement Statement
hi link javaBoolean Boolean
hi link javaFuncDef Function
