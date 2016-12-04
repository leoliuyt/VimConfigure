
"-------- Themes and color---------
colorscheme atom-dark        "My Vim GUI color scheme

"-------- UI Tweaks -----------
set vb t_vb= 			" Disable bell after GUI started

" Some tweaks of atom dark theme
" Normal fg and bg color
hi Normal 		guifg=#eeeeee 	guibg=#252b3a
" Fg and bg color of visual mode
hi Visual 		guifg=#cdfbff 	guibg=#1bb1b2
" Fg and bg color of current line
hi CursorLine 		      		guibg=#2f374d
" Color of cursor
hi Cursor 		 guifg=NONE 	guibg=#2196f3
" Bg of line number column
hi LineNr				guibg=bg
" Fg and bg of status bar
hi StatusLine		 guifg=#526669 	guibg=bg
hi StatusLineNC	 	 guifg=#526669 	guibg=bg
