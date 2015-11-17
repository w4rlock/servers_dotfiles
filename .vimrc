syntax enable
filetype off
filetype indent on

set number
set wildmenu
set foldenable  
set foldmethod=indent 

set shiftwidth=2
set tabstop=2   
set softtabstop=2

set hlsearch
set showmatch 
set incsearch 
set ignorecase 

set showcmd                                  
set laststatus=2                            
set statusline=%f\ %y\ %m%r%h%w
set statusline+=%=                         
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%] 
set nocompatible

map <silent> tl :tabnext<CR>
map <silent> th :tabprev<CR>
map <silent> tn :tabnew<CR>
map <silent> td :tabclose<CR>

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap vq :q!<cr>
nmap <F9> :TlistToggle<CR>

nnoremap <space> za
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <F8> :NERDTreeToggle<CR>

set pastetoggle=<F2>
let mapleader = ","
let Tlist_Use_Right_Window   = 1

colorscheme badwolf
hi IndentGuidesOdd ctermbg=232
hi IndentGuidesEven ctermbg=236
hi LineNr ctermbg=16 ctermfg=236
hi Cursorline cterm=bold ctermbg=16
hi CursorLineNr cterm=bold ctermbg=16 ctermfg=yellow
hi StatusLine ctermbg=235
hi WildMenu ctermbg=16 ctermfg=white
"hi Normal ctermbg=none

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" -------- PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'taglist.vim'

call vundle#end()            " required
filetype plugin indent on    " required

