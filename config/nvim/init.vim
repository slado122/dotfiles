syntax enable

set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set clipboard=unnamedplus

" For Pytest
filetype on
filetype plugin on

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'jmcantrell/vim-virtualenv'
Plug 'vim-test/vim-test'
Plug 'Yggdroot/indentLine'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'

Plug 'ryanoasis/vim-devicons'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-solarized8'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" Airline
let g:airline_powerline_fonts = 1
let g:powerline_symbols='unicode'

set background=dark
" colorscheme gruvbox
" colorscheme nord
colorscheme solarized8

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:indentLine_enabled = 0
let g:indentLine_char = '|'

nmap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nmap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
nmap <leader>u :UndotreeShow<CR>
nmap <Leader>ps :Rg<SPACE>
nmap <C-p> :GFiles<CR>
nmap <Leader>pf :Files<CR>
nmap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nmap <Leader>il :IndentLinesToggle<CR>

" coc.nvim extensions
let g:coc_global_extensions = [
    \ 'coc-pyright',
    \ 'coc-rust-analyzer',
    \ 'coc-lua',
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-tslint-plugin',
    \ 'coc-sh',
    \ 'coc-prettier',
    \ 'coc-explorer',
    \ 'coc-diagnostic',
    \ 'coc-kotlin',
    \ 'coc-db',
    \ 'coc-docker',
    \ 'coc-sql',
    \ 'coc-terminal',
    \ 'coc-calc',
    \ 'coc-git',
    \ 'coc-clangd'
    \ ]

" Prettifiers
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <leader>f :CocCommand prettier.formatFile<cr>
nmap <F2> :call CocActionAsync('format')<CR>
vmap <F2> <Plug>(coc-format-selected)

" coc.nvim documentation
nmap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

noremap <leader>/ :Commentary<cr>

noremap <C-n> :CocCommand explorer<CR>

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)

nmap <leader>cr :CocRestart
nmap <leader>ct <Plug>(coc-terminal-toggle)
nmap <leader>cp <Plug>(coc-terminal-repl)

" Testing
nmap <silent> <C-t>n :TestNearest<CR>
nmap <silent> <C-t>s :TestSuite<CR>
let test#rust#cargotest#options = '-- --nocapture'

" Two semicolons are easy to type.
imap ;; <Esc>

" Save file
nmap <leader><leader> :w<CR>

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

"Tabs navigation
nmap <leader>tn  :tabnew<CR>
nmap <leader>tl  :tabnext<CR>
nmap <leader>th  :tabprev<CR>

" Auto Formatting
nmap <C-f> :Prettier<CR>

" Indentation for JS
au BufNewFile,BufRead *.js
    \ set shiftwidth=2 |
    \ set tabstop=2 |
    \ set softtabstop=2

" Indentation for Python
au BufNewFile,BufRead *.py
    \ set autoindent |
    \ set fileformat=unix

" Python host
let g:python3_host_prog = '/usr/bin/python'

let g:db_ui_table_helpers = {
\   'postgresql': {
\     'Count': 'select count(*) from "{table}"'
\   }
\ }

let g:vimwiki_list = [{'path': '~/.local/share/vimwiki'}]

" Language switcher
fu! SetLang(lang)
    call jobstart('xkb-switch -s ' . a:lang)
endfunction

fu! GetCurrentLang()
    return system('xkb-switch')
endfunction

let lastLang=GetCurrentLang()
au InsertLeave * let lastLang=GetCurrentLang() | call SetLang('us')
au InsertEnter * :call SetLang(lastLang)

" Debugger
let g:vimspector_install_gadgets = ['debugpy']

nnoremap <leader>m :MaximizerToggle!<CR>

fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
