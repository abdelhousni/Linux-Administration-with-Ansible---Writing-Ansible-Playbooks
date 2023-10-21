"syntax on: This line enables syntax highlighting. This makes different parts of your code (like keywords, variables, comments) appear in different colors, which can make it easier to read and understand.
syntax on
" set bg=dark: This line sets the background color of your Vim editor to dark. This is useful if you prefer a dark theme for your coding environment.
set bg=dark
" autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul: This line is a bit more complex. It’s an autocommand that applies certain settings whenever you open a file of type ‘yaml’. Here’s what each setting does:
" ai (autoindent): This turns on automatic indentation, which means Vim will automatically indent new lines to the same level as the previous line.
" et (expandtab): This makes Vim use spaces instead of tabs for indentation.
" ts=2 (tabstop): This sets the width of a tab character to 2 spaces.
" sw=2 (shiftwidth): This sets the number of spaces used for each step of (auto)indent. Setting it to 2 means each indent will be 2 spaces.
" cuc (cursorcolumn): This highlights the screen column of the cursor with a different color.
" cul (cursorline): This highlights the screen line of the cursor with a different color.
autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul

