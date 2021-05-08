" Author        : william
" Created       : 2/25/2020
" License       : MIT
" Description   :

" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'ap/vim-css-color'
Plug 'SirVer/ultisnips'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'rking/ag.vim'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdTree'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
call plug#end()

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

autocmd BufEnter *.jsx set filetype=javascriptreact
autocmd BufEnter *.tsx set filetype=typescriptreact

let mapleader = " "

nnoremap B ^
nnoremap E $
nnoremap ; :

inoremap qq <esc>

inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

nnoremap :qq :q!

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>v :wincmd v<CR>
nnoremap <Leader>s :wincmd s<CR>
nnoremap <Leader>o :wincmd o<CR>

nnoremap <Leader>qs :wincmd v <bar> wincmd s <bar> wincmd l <bar> wincmd s<CR>

" YouCompleteMe
nnoremap <silent> <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>fi :YcmCompleter FixIt<CR>

filetype plugin on
filetype indent on

syntax on

set mouse=a
set ruler
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set autoread                    "Reload files changed outside vim

set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set title                       "Change the terminal's title
set autochdir
set hidden
set noswapfile
set noerrorbells
set number
set colorcolumn=80
set nowrap                      "Don't wrap lines
set modelines=1
set foldmethod=indent           "fold based on indent
set foldnestmax=1               "deepest fold is 3 levels
set scrolloff=8                 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set completeopt-=preview
                                " Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1

" Auto-Close
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,erb'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
let g:closetag_shortcut = '^'
let g:closetag_close_shortcut = '<leader>>'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Indent-Guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" Coc Settings
let g:coc_global_extensions = ['coc-emoji', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-json', 'coc-pyls', 'coc-yaml']

" ag Settings
let g:ag_working_path_mode="r"

let g:python3_host_prog = expand("~/../../usr/bin/python3")

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
