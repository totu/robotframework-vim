# Robot Framework syntax highlighting for Vim

INSTALLATION
------------------------------------------
Use [Vim Plug](https://github.com/junegunn/vim-plug) or [Vundle](https://github.com/VundleVim/Vundle.vim)

USAGE
------------------------------------------
 * To enable syntax highlighting in vim, you may add this line at the beginning
   of a Robot Framework file(s):

    `# -*- coding: robot -*-`

 * Alternatively, set the `g:robot_syntax_for_txt` global variable to treat .txt
   files as Robot files.

 * Or to enable the syntax highlighting for just a specific file you can issue the following command from vim:

    `:setf robot`
