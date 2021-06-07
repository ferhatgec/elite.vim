" Elite syntax support for VIM
"  * Name     : Elite
"  * Filename : Elitefile
"  * Author   : Ferhat Geçdoğan
"  * License  : MIT

if exists("b:current_syntax")
  finish
endif

syn keyword EliteNotes contained TODO FIXME XXX NOTE

inoremap [ []<left>

syn keyword EliteBoolean eq uneq

syn match EliteOperators '[+^\-\*/\'%#@&=<>|!`?{}[]]'

syn match EliteComment '\\.*$' contains=EliteNotes,EliteBoolean
syn match EliteComment '//.*$' contains=EliteNotes,EliteBoolean

syn match EliteNumber '\d\+' contained display
syn match EliteNumber '[-+]\d\+' contained display

syn keyword EliteStatement if else for
syn keyword EliteVar set as is

syn keyword EliteFunction print println signal specific exists exec append

syn keyword EliteKeyword use required_version env link std outfile

syn region EliteMacro start="\[\[" end ="\]\]"
syn match EliteType '\w\@![A-Z]\w*'

syn region EliteLiteral start='"' end='"' contains=EliteFormat

syn match EliteFormat "{.*}"

hi def link EliteNotes      Todo
hi def link EliteBoolean    Boolean
hi def link EliteOperators  Operator
hi def link EliteComment    Comment
hi def link EliteStatement  Statement
hi def link EliteFunction   Function
hi def link EliteVar        Keyword
hi def link EliteType       Type
hi def link EliteKeyword    Keyword
hi def link EliteMacro      Macro
hi def link EliteLiteral    String
hi def link EliteFormat     SpecialChar
hi def link EliteMacro      PreProc
hi def link EliteNumber     Constant

let b:current_syntax = "elite"