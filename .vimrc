" Use vim-plug
" Specify directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'valloric/youcompleteme'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
Plug 'rhysd/vim-clang-format'
" Initialize plugin system
call plug#end()

"*****************************************************************************/
"General configuration
"*****************************************************************************/
" Set title of the window
set title
" Fix indent/tabs
set tabstop=8
set softtabstop=8
set shiftwidth=8
set expandtab
" Set line numbers with relative numbers
set number relativenumber
" Color the 80th column
set cc=80
" Good backspace behavior
set backspace=eol,start,indent
" Incremental seach
set incsearch
" Always display status
set laststatus=2
" Display cursor line/column
set ruler
" Command line completion
set wildmenu
" Long lines are wrapped correctly
set display+=lastline
" Delete comment character when joining commented lines
set formatoptions+=j
" Update file
set autoread
" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=1
" Always print sign column
set signcolumn=yes
" Update time
set updatetime=100
" Hidden buffers
set hidden
"filetypes
filetype plugin indent on
"encoding
set encoding=utf-8
 
"*****************************************************************************/
" Cscope configuration
"*****************************************************************************/
" CTRL-UNDERSCORE for direct go to
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>                  
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>                
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>                  
nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>                  
                                                                        
" Using 'CTRL-spacebar' then a search type makes the vim window         
" split horizontally, with search result displayed in                   
" the new window.                                                       
                                                                        
nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>             
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>           
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>             
nmap <C-Space>a :scs find a <C-R>=expand("<cword>")<CR><CR>             
                                                                        
" Hitting CTRL-space *twice* before the search type does a vertical     
" split instead of a horizontal one                                     
                                                                        
nmap <C-Space><C-Space>s                                                
        \:vert scs find s <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>g                                                
        \:vert scs find g <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>c                                                
        \:vert scs find c <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>t                                                
        \:vert scs find t <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>e                                                
        \:vert scs find e <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>i                                                
        \:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>             
nmap <C-Space><C-Space>d                                                
        \:vert scs find d <C-R>=expand("<cword>")<CR><CR>               
nmap <C-Space><C-Space>a                                                
        \:vert scs find a <C-R>=expand("<cword>")<CR><CR>

"#######################Plugins configuration#################################
"*****************************************************************************/
"Colorscheme configuration
"*****************************************************************************/
" Enable italic
let g:nord_italic = 1
" Italic comments
let g:nord_italic_comments = 1
" Increase comment brightness
let g:nord_comment_brightness = 20
" All colorscheme configuration should be done before the following activation
colorscheme nord

"*****************************************************************************/
"NerdTree configuration
"*****************************************************************************/
" Toggle nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

"*****************************************************************************/
" Syntastic configuration
"*****************************************************************************/
" Default configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }

"*****************************************************************************/
" CtrlP configuration
"*****************************************************************************/
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

"*****************************************************************************/
" Airline configuration
"*****************************************************************************/
let g:airline_symbols_ascii = 1
" Airline - Syntastic integration
let g:airline#extensions#syntastic#enabled = 1
let airline#extensions#syntastic#error_symbol = 'E:'
let airline#extensions#syntastic#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#syntastic#warning_symbol = 'W:'
let airline#extensions#syntastic#stl_format_err = '%W{[%w(#%fw)]}'
" Insert Powerline glyphs
let g:airline_powerline_fonts = 1

"*****************************************************************************/
" UltiSnip configuration
"*****************************************************************************/
let g:UltiSnipsExpandTrigger="<c-j>"

"*****************************************************************************/
" Vimtex configuration
"*****************************************************************************/
let g:tex_flavor = 'latex'
"youcompleme integration
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"zathura viewer
let g:vimtex_view_method = 'zathura'

"*****************************************************************************/
" Clang format configuration
"*****************************************************************************/
let g:clang_format#auto_format = 1
let g:clang_format#detect_style_file = 1
