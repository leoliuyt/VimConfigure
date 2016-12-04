set nocompatible     		 " Make vim behave more useful way
so ~/.vim/plugins.vim        " Mange plugins by vundle
" -------- Backup tmp files ----------
set backup                  " Backup current file
set writebackup             " Delete old backup

" Directories for back files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" No backup in thest directories
set backupskip=/tmp/*,/private/tmp/*
" Directories for the swp files
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"---------Themes and color -----------
set t_CO=256        		 " Number of colors in termial
colorscheme atom-dark-256        " My vim TUI color scheme
syntax on  			" Enable syntax highlighting

" ------- Mapping --------------------
let mapleader=','       " Change leader to comma
" ,ev to open vimrc in a new tab
nmap <leader>ev :tabedit ~/.vimrc<CR>
nmap <D-1> :tabn1<CR>
nmap <D-2> :tabn2<CR>
nmap <D-3> :tabn3<CR>
nmap <D-4> :tabn4<CR>
nmap <D-5> :tabn5<CR>
nmap <D-6> :tabn6<CR>

" Switch to alternative file quickly
map <D-e> <C-^>
" Move cursor among window by Ctrl + hjkl
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
" Toggle NERTree sidebar
nmap <C-n> :NERDTreeToggle<CR>

"--------- Autocmd -------------------
augroup autosourcing
    " Clear all autocmds in this group
    autocmd!
    autocmd BufWritePost .vimrc so %
    if has("gui_running")
        so ~/.gvimrc
    endif
augroup END

" -------- Searching ------------------
set hlsearch        " Hightlight search result
set incsearch       " Search as characters in real time
" Turn off search hightlight
nnoremap <leader><space> :noh<CR>
"--------- Indentation ----------------
set tabstop=4		" Number of spaces per tab
set shiftwidth=4	" Indent 4 columns for << and >> operations
set expandtab		" Replace tab with space
set autoindent		" Indent at the same level of the previous line
"---------UI Tweaks-----------
set guifont=Fira_Code:h18    	" Monospaed font with programming ligatures
" set macligatures 		" Display programming ligatures
set linespace=16		" set a line hight
set number 			" Show line numbers
set cursorline			" Hightlight current line
filetype indent on		" load filetype-specific indent file
set noerrorbells		" Disable bell for errors that display messages
set vb t_vb=			" Diable bell for errors that do not display messages

set guioptions-=l		" Hide left scroll bar
set guioptions-=L		" Hide left scroll bar in splitted window
set guioptions-=r		" Hide right scroll bar 
set guioptions-=R		" Hide right scroll bar in splitted window
set guioptions-=e       " Hide the native tab bar
set showmatch 			" Hightlight matching {[()]} automatically
set wildmenu			" Visualize autocomplete menu for command 
set scrolljump=5		" Lines to scroll when cursor leaves screen
set scrolloff=3			" Minium lines to keep above and below the cursor
set splitbelow          " Split the window below the current
set splitright          " Put the splitted window right of the current one
