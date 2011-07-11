if filereadable(expand("~/.vim/vundle.conf"))
  source ~/.vim/vundle.conf
endif

" activate solarized theme
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
call togglebg#map("<F5>")
