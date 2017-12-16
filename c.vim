" Vim syntax file
" Language: C
" Maintainer: Matthew Scheffer
" Latest Revision: 16 December 2017

if exists("b:current_syntax")
  finish
endif

hi Normal guibg=#1c1c1c

" Keywords
syn keyword cKeyword if else while do for
syn keyword cVariable void int char long float unsigned signed short  


" Matches
syntax match cComment "\v(//).*" "line comments
syntax match cComment "\v(\/\*)\_.*(\*\/)" "block comments
syntax match cString "\v(\").*(\")" "strings
syntax match cChar "\v(\').{-}(\')" "chars
syntax match cNumber "\v\d" "decimal numbers
syntax match cNumber "\v(0x)[\d\a]*" "hex numbers
syntax match cHeader "\v#(include).*" "include statements
syntax match cHeader "\v#(define).*" "define statements
syntax match cBrackets "\v[\{\}\[\]\(\)\;]" "bracket groups and semicolon
syntax match cVarfuns "\v\a[a-zA-Z0-9]*" "functions and variables, 0 to prevent hex overwrite
syntax match cOperators "\v[\+\-\*\>\<\=\!\?\.\,\&\|\^\~\:]" "operators


" Regions


" Highlights
hi cKeyword guifg=#cc0000
hi cVariable guifg=#ffc04c
hi cHeader guifg=#ad6aea
hi cNumber guifg=#ff5b77
hi cString guifg=#009fdf
hi cChar guifg=#00ffff
hi cBrackets guifg=#cc0000
hi cOperators guifg=#ffc04c
hi cVarfuns guifg=#e4e4e4
hi cComment guifg=#329932
