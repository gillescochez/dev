" Global settings
set autoindent "automatically indent code
set hlsearch "highlight searched things
set incsearch "incremental search
set ignorecase "ignore case 
set autoread "auto read when file is changed from outside
set ruler "show current position
set nu "show line number
set showmatch "highlight matching bracket
set softtabstop=4 "set tab size to 4
set shiftwidth=4 "set shift size to 4
set mouse=a "enable mouse control (set pointer, select text)
set expandtab "tab to spaces

"Fix autocompletion to it behave like bash
set wildmode=longest:full
set wildmenu

"Disable backup (all on svn/git anyway)
set nobackup
set nowb
set noswapfile

set mouse=a "allows mouse selection and pointing

" enable jquery syntax for javascript files
"au BufRead,BufNewFile *.js set ft=javascript syntax=jquery "enable jQuery syntax for javascript files

au BufRead,BufNewFile *.js set ft=javascript syntax=jquery

" enable json highlighting for json files
au! BufRead,BufNewFile *.json set filetype=json

" automatic command when a window is entered
au VimEnter * NERDTree "start tree viewer
au VimEnter * wincmd p "move cursor to the file window
au WinEnter * call s:CloseIfOnlyNerdTreeLeft() "auto close tree when no buffer open

" Update tmls when one tml file is saved
" au BufWritePost *.tml execute " silent !updatetmls &" | redraw

" function to close automatically the tree
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
	if bufwinnr(t:NERDTreeBufName) != -1
	    if winnr("$") == 1
		q
	    endif
	endif
    endif
endfunction
