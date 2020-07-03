" Vim syntax file
" Language: SBVR (Semantics of Business Vocabulary and Business Rules)
" Maintainer: Matthew McGinn
" Latest Revision: 07 July 2020

if exists("b:current_syntax")
  finish
endif

syn keyword sbvrTodo contained TODO FIXME XXX NOTE
syn keyword sbvrTerm Vocabulary Necessity Rule Definition Note
syn match sbvrComment "--.*$" contains=sbvrTodo
syn match sbvrTerm "Fact.[tT]ype"
syn match sbvrTerm "Term"
syn match sbvrTerm "Term.[fF]orm"
syn match sbvrTerm "Synonymous.[Ff]orm"
syn match sbvrTerm "Concept.[Tt]ype"
syn match sbvrTerm "Database.Table.Name"
syn match sbvrTerm "Reference.Scheme"
syn match sbvrComparison "is (greater|less) than"
syn match sbvrConceptDef contained "File (Type)"
syn match sbvrConceptDef contained "Text (Type)"
syn match sbvrConceptDef contained "Big Integer (Type)"
syn match sbvrConceptDef contained "Hashed (Type)"
syn match sbvrConceptDef contained "Integer (Type)"
syn match sbvrConceptDef contained "Short Text (Type)"
syn match sbvrConceptDef contained "Date Time (Type)"
syn match sbvrConceptDef contained "JSON (Type)"
syn match sbvrConceptDef contained "Real (Type)"
syn match sbvrConceptDef contained '[\w\s]+$'
syn match sbvrType "Concept.[Tt]ype:.*$" contains=sbvrConceptDef

let b:current_syntax = "sbvr"

hi def link sbvrConceptDef  Type
hi def link sbvrTodo        Todo
hi def link sbvrComment     Comment
hi def link sbvrTerm        Statement
hi def link sbvrType        PreProc
