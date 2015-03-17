set backupdir=~/vimtemp
set directory=~/vimtemp

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Plugins

" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

syntax enable

let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'

if executable('ack')
  " Use Ag over Grep
  set grepprg=ack\ --nogroup\ --nocolor

endif

set clipboard=unnamed
set rnu
set nu
set ruler
set smartindent
syntax on
set ai
set aw
set ts=2
set sw=2
set expandtab
set softtabstop=2
set ignorecase
set smartcase
set scrolloff=5
filetype indent plugin on

" colors
set t_Co=256
hi Search ctermbg=DarkRed
hi Search ctermfg=White
hi Folded ctermbg=black
hi Folded ctermbg=090
hi LineNr ctermfg=172
hi Visual ctermbg=Yellow
hi Visual ctermfg=Black

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
let g:rspec_runner = "os_x_iterm"

" autosessions (courtesy of gkchestertron)
command -nargs=1 MS :mksession ~/vimsessions/<args>.vim
command -nargs=1 SS :mksession! ~/vimsessions/<args>.vim
command -nargs=1 LS :source ~/vimsessions/<args>.vim
command LL :source ~/vimsessions/last.vim
autocmd VimLeavePre * :mksession! ~/vimsessions/last.vim

" mappings

" make Y work like the other capital verbs
nmap Y y$

" Syntastic stuff
let g:syntastic_objc_check_header = 1

set tags=tags

" " TODO: create tags file if it doesn not already exist
" autocmd VimEnter silent! * :!mkdir -p $TASTYPATH
" autocmd VimEnter silent! * :!touch $TAGPATH
" autocmd VimEnter silent! * :!ctags -R -f $TAGPATH .
" autocmd BufWrite silent! * :!ctags -R -f $TAGPATH .
