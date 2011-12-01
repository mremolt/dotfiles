" vundle config
source ~/.vim/vundle.vim

"set term=builtin_ansi
set nocompatible

" activate solarized theme
syntax enable
colorscheme solarized
set background=dark
let g:solarized_termcolors=256
call togglebg#map("<F9>")

set relativenumber
set ruler

let mapleader = ","

" Set encoding
set encoding=utf-8

" deactivate the strange beHGavoiur of arrow keys in insert mode (prints ABCD)

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set colorcolumn=85
set textwidth=79
set formatoptions=qrn1

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

"SuperTab
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 25
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader>z :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif

" make uses real tabs
au FileType make set noexpandtab

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn on jslint errors by default
let g:JSLintHighlightErrorLine = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" ack is named ack-grep under Ubuntu
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" save on loosing focus
au FocusLost * :wa

" auto resizing of multiple windows
set winwidth=60
set winminwidth=58
set winwidth=999
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=11
set winminheight=10
set winheight=999

" deactivate <F1> help
inoremap <F1> :redraw!<CR>
nnoremap <F1> :redraw!<CR>
vnoremap <F1> :redraw!<CR>>

nnoremap <leader>a :Ack 
nnoremap <leader>ft Vatzf
nnoremap <leader>v V`] 
nnoremap <leader>r :Rake<CR>
nnoremap <leader><space> :noh<cr>

nnoremap <leader>cc :CoffeeCompile<CR>
nnoremap <leader>cr :CoffeeRun<CR>
vnoremap <leader>cc :CoffeeCompile<CR>
vnoremap <leader>cr :CoffeeRun<CR>

nnoremap <F2> :NERDTreeToggle<CR>

" Command-T
nnoremap <F3> :CommandTFlush<cr>\|:CommandT<CR>
nnoremap <F4> :CommandTBuffer<CR>
nnoremap <F5> :CommandTJump<CR>

" Press F6 to toggle GUndo tree
nnoremap <F6> :GundoToggle<CR>
nnoremap <F7> :TlistToggle<CR>

"taglist settings
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Auto_Open = 0

" auto indent the code
map <leader>f mf1G=G`f

" load last file in buffer to current window
map <leader><leader> <C-^>

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


" Other files to consider Ruby
au BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,Vagrantfile,Guardfile,Capfile set ft=ruby

"  ---------------------------------------------------------------------------
"  CoffeeScript
"  ---------------------------------------------------------------------------

let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

"  ---------------------------------------------------------------------------
"  SASS / SCSS
"  ---------------------------------------------------------------------------

au BufNewFile,BufReadPost *.scss setl foldmethod=indent
au BufNewFile,BufReadPost *.sass setl foldmethod=indent
au BufRead,BufNewFile *.scss set filetype=scss

" When vimrc, either directly or via symlink, is edited, automatically reload it
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %


if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
