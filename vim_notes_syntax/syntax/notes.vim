" Vim syntax file
" Language:	custom note syntax

" quit when a syntax file was already loaded
if exists ("b:current_syntax")
    finish
endif

" Ignore cases in matches
syn case ignore

" Paths
syn match NoteDirectory "[a-zA-Z]:\\\p*"

" Sections
syn match NoteSection	     "\[.*\]"
syn match NoteSubSection1    "===.*==="
syn match NoteSubSection2    "====.*===="

" Questions
syn match NoteQuestion       "?.*?"
syn match NoteAnswered       "?.*!"

" String
syn match NoteString	     "\".*\""
syn match NoteString         "'.*'"  

" Comments
syn match NoteComment	     "#.*"

" Snippets
syn match NoteSnippet        "=-=-=-=\_.\{-}=-=-=-="

" Todo
syn match NoteTODO           "TODO:.*"

" Emphasis
syn match NoteEmphasis       "\*.*\*"

" Turn on highlighting
hi def link NoteDirectory    Directory
hi def link NoteComment	     Comment
hi def link NoteString	     String
"hi def link NoteAnswered     Structure
"hi def link NoteQuestion     Operator
hi def link NoteSnippet      Special
hi def link NoteTODO         Todo
hi def link NoteEmphasis     VisualNOS

:hi NoteAnswered    guifg=lightgreen   term=italic
:hi NoteQuestion    guifg=lightred     term=italic
:hi NoteSection     guifg=DeepSkyBlue1 term=bold
:hi NoteSubSection1 guifg=DeepSkyBlue3
:hi NoteSubSection2 guifg=DeepSkyBlue4

let b:current_syntax = "notes"

