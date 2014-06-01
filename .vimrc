execute pathogen#infect()

" from http://vim.wikia.com/wiki/Example_vimrc
set nocompatible
set hidden
set wildmenu
set showcmd
set laststatus=2
set confirm
set mouse=a

" search
set incsearch " incremental search mode
set hlsearch " highlight search things
set ignorecase " ignore case when searching...
set smartcase	" ...unless uppercase (only works when ignorecase on)

set spell " spellchecker
set history=1000 " how many lines Vim has to remember
set encoding=utf-8 " encoding
set ffs=unix,mac,dos " Use Unix as the standard file type

" tab & indent
filetype plugin indent on
set softtabstop=2 " 1 tab = 2 spaces
set shiftwidth=2 " 1 tab = 2 spaces
set expandtab " spaces instead of tabs
set autoindent

autocmd BufWritePre * :%s/\s\+$//e " trim trailing white space on close

" appearance
syntax on " syntax highlighting
set t_Co=256 " 256 colors (NOT SUPPORTED IN 10.6.8)
colorscheme ir_black
set number " show line number
set cursorline " highlight current line
" underline current line
set cul
hi cursorline term=underline cterm=underline gui=underline

" shortcuts
inoremap kj <Esc>
" Stay the hell out of insert mode
" http://cloudhead.io/2010/04/24/staying-the-hell-out-of-insert-mode/
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <F4> :e /Users/amacy/Documents/log.txt<CR>

" CommandT
map <F3> :CommandT<CR>
set wildignore+=*.o,*.obj,.git,*.swo,*.swp,*.mp3,*.m4a,*.zip,*.rar,*.doc,*.docx,*.jpg,*.gif,*.pdf,*.torrent,Applications,Documents/creative,Documents/personal-misc,Documents/profession-misc/,Documents/transcriptions,*.xls,*.vcf,*.ai,*.indd,*.psd,*.tif,*.tiff,*.jpeg,*.ini,Downloads,Movies,Pictures,Dropbox,Music,Library,*.DS_Store,*.initalized,tmp/

" Gitgutter
highlight clear SignColumn " same appearance as your line number column
