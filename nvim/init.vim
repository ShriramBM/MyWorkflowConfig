:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nowrap
:set cursorline
:set completeopt-=preview " For No Previews
:set clipboard=unnamedplus "for copy and paste from nvim to outside 


" tab stuff										
nnoremap <C-t> :tabnew<CR>
nnoremap <C-s> :tabnext<CR>

" Remap splitting commands to use Alt key
noremap <M-h> <C-w> h
noremap <M-j> <C-w> j
noremap <M-k> <C-w> k
noremap <M-l> <C-w> l
noremap <M-s> <C-w> s
noremap <M-v> <C-w> v

				

nnoremap <C-f> :NERDTreeFocus
nnoremap <C-n> :NERDTreeToggle<cr> 
nnoremap <C-b> :NERDTreeToggle<cr>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-I> :call CocAction('format')<CR>
nnoremap <C-p> :FZF<cr>

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
Plug 'shaunsingh/solarized.nvim'
Plug 'fatih/vim-go' "go stuff
call plug#end()


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nmap <F8> :TagbarToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"


if exists("syntax_on")
  syntax reset
endif


" For beautiful java treesitter 
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "java" },  -- Ensure Java parser is installed
  highlight = {
    enable = true,                -- Enable syntax highlighting
    additional_vim_regex_highlighting = false,  -- Disable Vim's default highlighting
  },
}
EOF

colorscheme jellybeans
" terminal ese key to normal mode for ease use
tnoremap <Esc> <C-\><C-n>

