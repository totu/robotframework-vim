# Robot Framework syntax highlighting for Vim

INSTALLATION
------------------------------------------
Use [Vim Plug](https://github.com/junegunn/vim-plug) or [Vundle](https://github.com/VundleVim/Vundle.vim)

USAGE
------------------------------------------
 * For standard Robot Framework files (\*.robot and \*.resource) file type detection works automatically and for \*.txt, \*.rst, and \*.html files you should add the following header

    `# -*- coding: robot -*-`

 * Alternatively, set the `g:robot_syntax_for_txt` global variable to treat .txt
   files as Robot files.

 * Or to enable the syntax highlighting for just a specific file you can issue the following command from vim:

    `:setf robot`
