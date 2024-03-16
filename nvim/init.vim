:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nowrap
":set cursorline
:set completeopt-=preview " For No Previews
:set clipboard=unnamedplus

" Remap splitting commands to use Alt key
noremap <M-h> <C-w>h
noremap <M-j> <C-w>j
noremap <M-k> <C-w>k
noremap <M-l> <C-w>l
noremap <M-s> <C-w>s
noremap <M-v> <C-w>v
call plug#begin()

"Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/wolandark/vim-live-server.git'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' } " react snippets
call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus
nnoremap <C-n> :NERDTree 
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-p> :FZF<cr>
nnoremap <C-s> :term cargo run<cr>

nmap <F8> :TagbarToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"


highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "green"

hi ColorColumn ctermbg=40
hi Comment ctermfg=2
hi Constant ctermfg=40
hi CursorLine term=none cterm=none
hi Directory ctermfg=40
hi Folded ctermbg=40 ctermfg=0
hi Identifier ctermfg=40
hi LineNr ctermfg=2
hi MoreMsg ctermfg=40
hi NonText ctermfg=40
hi Normal ctermbg=0 ctermfg=40
hi Operator ctermfg=40
hi PreProc ctermfg=40
hi Search ctermbg=120
hi Special ctermfg=40
hi Statement cterm=bold ctermfg=40
hi StatusLineTerm ctermbg=15
hi StatusLineTerm term=none ctermbg=40 ctermfg=0
hi StatusLineTermNC ctermbg=15
hi StatusLineTermNC term=none ctermbg=40 ctermfg=0
hi String ctermfg=40
hi Todo cterm=none ctermfg=40 gui=none
hi Type ctermfg=40
hi Visual term=reverse ctermbg=120 ctermfg=0
hi VertSplit ctermfg=232 cterm=none
hi Question ctermfg=40
hi StatusLine cterm=none ctermfg=2 ctermbg=232
hi StatusLineNC cterm=none ctermfg=40 ctermbg=234
hi Pmenu ctermbg=232 ctermfg=40
hi MatchParen ctermbg=232 ctermfg=2
hi diffAdded ctermfg=2 cterm=none
hi diffRemoved ctermfg=1


