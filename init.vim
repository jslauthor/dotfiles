call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'flowtype/vim-flow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'myusuf3/numbers.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/tComment'
if (!has("gui_vimr"))
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Omnifunc
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Color Scheme

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

set background=dark
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme gruvbox
let g:airline_theme='oceanicnext'

" Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint', 'flow']

" vim-javascript
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" key remappings
:nnoremap <S-J> 5jzz
:nnoremap <S-k> 5kzz

:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" tabs

set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" Remove trailing whitespace

autocmd BufWritePre * :%s/\s\+$//e

" thank you http://statico.github.io/vim.html
" wrapped lines behave like normal lines
set nowrap
nmap j gj
nmap k gk

" cmd+s to save
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>
vmap <C-s> <esc>:w<CR>gv

" FZF
map <C-p> :FZF<CR>

" In normal mode make them resize windows.
nnoremap <Left> :exec "vertical resize +" . (&columns * 1/6)<CR>
nnoremap <Right> :exec "vertical resize -" . (&columns * 1/6)<CR>
nnoremap <Down> :exec "resize -" . (&lines * 1/6)<CR>
nnoremap <Up> :exec "resize +" . (&lines * 1/6)<CR>

" Common mistyped commands.
command W w
command Wq wq
command WQ wq
command Q q
