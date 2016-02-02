syntax enable
filetype off
filetype indent on

set number
set wildmenu
set foldenable  
set foldmethod=indent 
set cursorline

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
map <F7> mzgg=G`z

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
hi GitGutterAddLine ctermfg=none
hi GitGutterAddDefault cterm=bold
hi GitGutterDeleteLine ctermbg=16
hi GitGutterChangeLine ctermbg=17
hi GitGutterAddLine ctermbg=16
hi Normal ctermbg=none

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict


let g:gitgutter_highlight_lines = 1 
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"


map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" -------- PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'taglist.vim'
Plugin 'easymotion/vim-easymotion'


Plugin 'Tabular'
Plugin 'ervandew/supertab'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required
