" Command-e for ConqueTerm
" map <D-e> :call StartTerm()<CR>

" Ctrl-c to toggle comments
map <C-c> <plug>NERDCommenterToggle<CR>
:imap <C-c> <Esc><plug>NERDCommenterToggle<CR>i

" Don't beep
set visualbell

" Start without the toolbar
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b
