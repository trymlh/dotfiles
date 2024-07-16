" Enable line numbers
set number

" Disable relative line numbers
set norelativenumber

" Enable syntax highlighting
syntax on

" Set color scheme to tokyonight
" The actual setting of the colorscheme will be done after plugin installation
" Enable mouse support
set mouse=a

" Enable clipboard support
set clipboard=unnamedplus

" Enable auto-indentation and smart tabs
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Enable search settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" Enable persistent undo
set undofile

" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Status line
Plug 'nvim-lualine/lualine.nvim'

" Git integration
Plug 'tpope/vim-fugitive'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File icons
Plug 'ryanoasis/vim-devicons'

" Theme: tokyonight
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" End plugin initialization
call plug#end()

" Enable NERDTree at startup
autocmd vimenter * NERDTree

" Configure Coc.nvim for autocompletion
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-pyright']

" Treesitter configuration
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "lua", "python", "javascript", "html", "css"},
  highlight = {
    enable = true,
  },
}
EOF

" NERDTree toggle
nnoremap <C-n> :NERDTreeToggle<CR>

" FZF mappings
let mapleader = "\<Space>"
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>

" Autocomplete keybindings
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Nano-like keybindings
nnoremap <C-s> :w<CR>
nnoremap <C-x> :q<CR>
inoremap <C-s> <Esc>:w<CR>a
inoremap <C-x> <Esc>:q<CR>

" Tokyonight configuration
lua << EOF
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.cmd[[colorscheme tokyonight]]
EOF
