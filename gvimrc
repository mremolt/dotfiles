" helper functions
source ~/.vim/functions.vim

" Don't beep
set visualbell

colorscheme solarized

" run coffeelint on save
au BufWritePost *.coffee CoffeeLint -f ~/.coffeelint.json | cwindow

" Start without the toolbar
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b
