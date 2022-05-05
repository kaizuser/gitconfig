call plug#begin('/home/kaizuser/.local/share/nvim/site')

"PLUGINS------------------------------------------------------------------
Plug 'Valloric/MatchTagAlways'

Plug 'yuezk/vim-js'

Plug 'HerringtonDarkholme/yats.vim'

Plug 'maxmellon/vim-jsx-pretty'

Plug 'morhetz/gruvbox'

Plug 'ryanoasis/vim-devicons'

Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'

Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-syntastic/syntastic'

Plug 'powerline/powerline'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'jeetsukumaran/vim-buffergator'

Plug 'alvan/vim-closetag'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'ycm-core/youcompleteme'

Plug 'KarimElghamry/vim-auto-comment'

Plug 'othree/html5.vim'

"Buffers---------------
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()

"SHORCUTS-----------------------------------------------------------------
" Easymotion-nerdtree
let mapleader=' '
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" Buffers
set termguicolors
let bufferline = get(g:, 'bufferline', {})

let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.both = v:true

let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''

nnoremap <Leader>j :BufferPrevious<CR>
nnoremap <Leader>k :BufferNext<CR>
nnoremap <Leader>h :BufferMovePrevious<CR>
nnoremap <Leader>l :BufferMoveNext<CR>
nnoremap <Leader>d :BufferClose<CR>

"AESTHETIC THEMES -----------------------------------------------------------
colorscheme dracula
syntax enable

" Airline
set t_Co=256

" NerdTree
let g:airline_powerline_fonts = 1
set encoding=utf8
set guifont=Bitstream\ Vera\ Sans\ Mono\ Nerd\ Font\ Complete\ 11
"INTERFACE PLUGINS---------------------------------------------------------------
" Syntastic
set signcolumn=no

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors=1

let g:syntastic_quiet_messages={'type':'style'}
let g:syntastic_quiet_messages={'type':'warning'}
let g:syntastic_quiet_messages={'!level':'errors'}

" YCM
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'

" IndentLines
set number

" JSX CONFIG---------------------------------------------------------------------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx, *.js, *.tsx, *.ts"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb, *.js, *.tsx, *ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascriptreact' : 1,
    \ 'typescriptreact' : 1,
    \ 'javascript' : 1, 
    \ 'typescript' : 1,
    \}

