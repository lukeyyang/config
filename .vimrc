map <F9> : ! gcc-4.9 -Wall -Wextra -Wconversion -g % -o %< && size %< <CR>
map <F5> : ! gdb %< <CR>
map <F7> : ! g++-4.9 -Wall -Wextra -Wconversion -g % -o %< && size %< <CR>
"map <F9> : ! gcc -Wall -Wextra -Wconversion -g % -o %< && size %< <CR>
"map <F5> : ! gdb %< <CR>
"map <F7> : ! g++ -Wall -Wextra -Wconversion -g % -o %< && size %< <CR>

syntax on
set nocompatible
set showcmd
set foldmethod=marker
set grepprg=grep\ -nH\ $*
set autoindent
set expandtab
set shiftwidth=8
set softtabstop=8
set smartindent
"set cindent
if version >= 700
	set spl=en spell
	set nospell
endif
set wildmenu
set wildmode=list:longest,full
set number
set smartcase
set incsearch
set hlsearch
set nohidden
set fileencodings=utf-8
set textwidth=80
colorscheme desert

highlight MarchParen ctermbg=4
let g:clipbrdDefaultReg = '+'


"set iskeyword+=33-47,58-64,91-96,123-128

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm'\"")|else|exe "norm $"|endif|endif

set history=400
set autoread
set wildmenu
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch
inoremap jj <Esc>
nnoremap JJJJ <Nop>
