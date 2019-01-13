"======================================================================
"Basic Settings!
"======================================================================
"vim extended mode
set nocompatible
"setting filetype off while loading plugins
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'								"NerdTree
Plugin 'https://github.com/majutsushi/tagbar'					"Tagbar
"Plugin 'https://github.com/vim-latex/vim-latex' 				"Latex-Suite
Plugin 'https://github.com/freeo/vim-kalisi'					"Kalisi color scheme
Plugin 'https://github.com/altercation/vim-colors-solarized'	"Solarized Color Scheme
Plugin 'https://github.com/xolox/vim-misc'						"Needed for EasyTags
Plugin 'Colorizer--Brabandt'									"Highlight Colortags
Plugin 'https://github.com/scrooloose/nerdcommenter'			"Easier Commenting
Plugin 'https://github.com/docunext/closetag.vim'				"Autoclose HTML tags
Plugin 'tmhedberg/SimpylFold'									"Python Folding
Plugin 'https://github.com/godlygeek/tabular'					"Pretty LaTex Tables
Plugin 'lervag/vimtex'											"VimTex
Plugin 'SirVer/ultisnips'										"Ultisnips
Plugin 'honza/vim-snippets'										

let g:vimtex_view_method = 'general'
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_compiler_latexmk = {'callback' :0}

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"turn off folding
"set nofoldenable
"enable line numbers
set number
"enable mouse compatibility
set mouse=a
"command history length
set history=1000
"autoindent
set autoindent
"number of spaces for autoindentization
set shiftwidth=4
"number of spaces for tab
set tabstop=4
"make backspace work normally
set backspace=indent,eol,start
"max tab number
set tabpagemax=15
"Set 256 color support
set t_Co=256
"statusline
set laststatus=2
"statusline: filepath, filetype, mod ,rw, help, preview,
set statusline=%f\ %y\ %m%r%h%w
"statusline: separation between left and right aligned item
set statusline+=%=
"statusline: lines number, column number, percent
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%]
"set all but toolbar
set guioptions=aegimrLt
"Setting colorscheme
runtime! plugin/guicolorscheme.vim
"GuiColorScheme eink
"colorscheme more
colorscheme elflord
set background=dark
"enable syntax highlights
syntax on

let g:solarized_termcolors=256


"Activate syntax highlighting for octave files
augroup filetypedetect
	au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END


"enabling and mapping spell checking
map <F2> :setlocal spell! spelllang=en_us<CR>
nmap <F8> :TagbarToggle <CR>
nmap <F9> :NERDTreeToggle <CR>



"=======================================================================
"Vim-LaTeX Settings
"=======================================================================

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

"======================================================================
"Autocmd Settings
"======================================================================
"autocmd bufnewfile *.py so /home/jedediah/.vim/templates/py_header.txt
"autocmd bufnewfile *.py exe "1," . 10 . "g/File Name:.*/s//File Name: " .expand("%")
"autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")
"autocmd Bufwritepre,filewritepre *.py execute "normal ma"
"autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified:.*/s/Last Modified: .*/Last Modified: " .strftime("%c")
"autocmd bufwritepost,filewritepost *.py execute "normal `a"
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell


au BufRead,BufNewFile *.tex let @c='O50i%O50i%o%a '
au BufRead,BufNewFile *.py let @c='O50i#O50i#o#a '

"hi Normal guibg=NONE ctermbg=NONE
"highlight Comment ctermbg=NONE
"highlight Constant ctermbg=NONE
"highlight Normal ctermbg=NONE
"highlight NonText ctermbg=NONE
"highlight Special ctermbg=NONE
"highlight Cursor ctermbg=NONE
"highlight Folded ctermbg=NONE
"highlight ErrorMSG ctermbg=NONE
"highlight FoldColumn ctermbg=NONE
"highlight String ctermbg=NONE
"highlight Number ctermbg=NONE
"highlight Boolean ctermbg=NONE
"highlight TabLineSel ctermbg=NONE
"highlight CursorLine ctermbg=NONE
"highlight Pmenu ctermbg=NONE
"highlight DiffChange ctermbg=NONE
"highlight SpecialKey ctermbg=NONE
"highlight LineNR ctermbg=NONE
"highlight Directory ctermbg=NONE
"highlight Question ctermbg=NONE
"highlight MoreMsg ctermbg=NONE
"highlight DiffDelete ctermbg=NONE


let g:vimtex_latexmk_options = '-pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'

