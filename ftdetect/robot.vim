"=============================================================================
" File:         ftdetect/robot.vim
" Author:       Michael Foukarakis & Topi Tuulensuu
" Version:      0.3
" Created:      Tue 21 Dec 2010 09:08:35 AM EET
"------------------------------------------------------------------------
" Description:
"   Filetype detection plugin for Robot files.
" WARNING:
"   Overrides all default file type checks.
"------------------------------------------------------------------------
" Installation:
"   - Requires Vim7+
"   - Drop this file into {rtp}/ftdetect
"   - Use the '# -*- coding: robot -*-' in the first line of robot files
"     or set the g:robot_syntax_for_txt global variable
"     to explicitly tell vim about filetype.
" History:      - Replaced setf with setlocal filetype, much more sane.
" TODO:         Missing features go here.
"=============================================================================
let s:cpo_save=&cpo
set cpo&vim

" Try to guess when dealing with .html, .txt, or .rst files:
au BufNewFile,BufRead *.txt call s:FTrobot()
au BufNewFile,BufRead *.rst call s:FTrobot()
au BufNewFile,BufRead *.html call s:FTrobot()
" No resorting to heuristics for .robot files:
au BufNewFile,BufRead *.robot setlocal filetype=robot
au BufNewFile,BufRead *.resource setlocal filetype=robot

func! s:FTrobot()
    let b:topl = getline(1)
    if (exists("g:robot_syntax_for_txt") && g:robot_syntax_for_txt)
    \ || b:topl =~ '\*\*\*.\{-}\*\*\*'
    \ || b:topl =~ '^# -\*- coding: robot -\*-$'
        setlocal filetype=robot
    endif
endfunc

"------------------------------------------------------------------------
let &cpo=s:cpo_save
" vim700: set fdm=marker:
