" Vim syntax file
" Language: SBVR (Semantics of Business Vocabulary and Business Rules)
" Maintainer: Matthew McGinn
" Latest Revision: 07 July 2020

if exists("b:current_syntax")
  finish
endif

syn keyword sbvrTodo contained TODO FIXME XXX NOTE
syn match sbvrComment "--.*$" contains=sbvrTodo
syn match sbvrTerm "Concept.[Tt]ype:"
syn match sbvrTerm "Database.Table.Name:"
syn match sbvrTerm "Definition:"
syn match sbvrTerm "Fact.[tT]ype:"
syn match sbvrTerm "Necessity:"
syn match sbvrTerm "Note:"
syn match sbvrTerm "Reference.Scheme:"
syn match sbvrTerm "Rule:"
syn match sbvrTerm "Synonymous.[Ff]orm:"
syn match sbvrTerm "Term.[fF]orm:"
syn match sbvrTerm "Term:"
syn match sbvrTerm "Vocabulary:"
syn match sbvrConceptDef "Big Integer (Type)"
syn match sbvrConceptDef "Date Time (Type)"
syn match sbvrConceptDef "File (Type)"
syn match sbvrConceptDef "Hashed (Type)"
syn match sbvrConceptDef "Integer (Type)"
syn match sbvrConceptDef "JSON (Type)"
syn match sbvrConceptDef "Real (Type)"
syn match sbvrConceptDef "Short Text (Type)"
syn match sbvrConceptDef "Text (Type)"
syn match sbvrType "Concept.[Tt]ype:" nextgroup=sbvrConceptDef skipwhite

let b:current_syntax = "sbvr"

hi def link sbvrConceptDef  Type
hi def link sbvrTodo        Todo
hi def link sbvrComment     Comment
hi def link sbvrTerm        Statement
hi def link sbvrType        PreProc
