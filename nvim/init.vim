call plug#begin()
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'morhetz/gruvbox'
Plug 'Raimondi/delimitMate' 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'mfussenegger/nvim-lint'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': 'python' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal'
Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-terraform'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'turbio/bracey.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'cljoly/telescope-repo.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug '/nvim-telescope/telescope-project.nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jiangmiao/auto-pairs'
Plug 'craigemery/vim-autotag'
Plug 'mattn/emmet-vim'
Plug 'glepnir/dashboard-nvim'
Plug 'tpope/vim-commentary'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
Plug 'Pocco81/auto-save.nvim'
call plug#end()
colorscheme dracula
let g:NERDTreeShowHidden = 1
let g:NERDTreeChDirMode=0
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect 
set cursorline
filetype plugin indent on
syntax on
syntax enable
set autoindent
set smarttab
set t_Co=256
set tabstop=4
set shiftwidth=4
set wildmenu
set number
set mouse=a
set title
set softtabstop=4  
set noswapfile
set termguicolors
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set relativenumber
set nowrap
set scrolloff=10
set nobackup
set nowb
set termguicolors
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
nmap <s-q> :bd<cr>
nmap <s-s> :w<cr>
nmap <s-f> :NERDTree<cr>
nmap <space> <s-C>
nnoremap <c-f> <cmd>Telescope find_files hidden=true<cr>
nnoremap <c-g> <cmd>Telescope live_grep hidden=true<cr>
nnoremap <c-r> <cmd>Telescope repo list<cr>
nnoremap <s-left> <c-w>h
nnoremap <s-down> <c-w>j
nnoremap <s-up> <c-w>k
nnoremap <s-right> <c-w>l
nnoremap <s-space> :nohlsearch<cr>
autocmd StdinReadPre * let s:std_in=1
set encoding=UTF-8
let g:coc_global_extensions = ['coc-pyright', 'coc-go', 'coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-tslint-plugin', 'coc-styled-components', 'coc-react-refactor', 'coc-yaml', 'coc-sh', 'coc-sql', '@yaegassy/coc-ansible', 'coc-rust-analyzer', 'coc-xml', 'coc-git', 'coc-prettier', 'coc-java', 'coc-snippets']
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> D :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('D', 'in')
  endif
endfunction
nmap <leader>cl  <Plug>(coc-codelens-action)
nmap <c-h> :bprevious<cr>
nmap <c-l> :bnext<cr>
nmap <c-Left> :bprevious<cr>
nmap <c-Right> :bnext<cr> 
inoremap <expr> <tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap jk <esc>
inoremap < <><Left>
set colorcolumn=150
nmap <s-r> <Plug>(coc-codeaction-selected)
let g:terraform_fmt_on_save = 1
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_open_to_the_world = 1
nmap <c-p> <Plug>MarkdownPreview
set termguicolors
lua << EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = '|',
    section_separators = {left = '|', right = '|'},
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
    sections = {
        lualine_a = {{'mode', icon= '', separator = {left = ''}}},
        lualine_b = {{'branch', icon = '', separator = {left = ''}}, {'diff', separator = {right = ''}}, {'diagnostics', separator = {right= ''}}},
        lualine_c = {{'filename'}}, 
        lualine_x = {{'encoding', icon = ''}, 'filetype'},
        lualine_y = {{'progress', separator = {right = ''}}},
        lualine_z = {{'location', icon='', separator = {right = ''}}}
  },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'fzf', 'man', 'nerdtree', 'quickfix'}
}
require('telescope').setup{
    extensions = {
        repo = {
            subcommand = {
                argument = {
                    "new",
                    "default",
                    "value",
        },
      },
    },
        fzf = {
            fuzzy = true,                    
            override_generic_sorter = true,  
            override_file_sorter = true,     
            case_mode = "smart_case",        
        },
    },
}
require('telescope').load_extension('fzf', 'repo')
require("auto-save").setup {
enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
    execution_message = {
		message = function() -- message to print on save
			return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
		end,
		dim = 0.18, -- dim the color of `message`
		cleaning_interval = 1000, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
	},
    trigger_events = {"InsertLeave", "TextChanged", "BufNew", "BufLeave", "BufAdd", "BufDelete", "BufEnter", "UIEnter", "UILeave", "InsertChange", "InsertEnter", "TabEnter", "TabLeave", "TabNew", "TabNewEntered", "TabClosed", "TermOpen", "TermEnter", "TermLeave", "TermClose", "TermResponse", "TextChanged", "TextChangedI", "TextChangedP", "VimEnter", "VimLeave", "VimResized", "VimResume", "VimSuspend", "WinClosed", "WinEnter", "WinLeave", "WinNew"},
        condition = function(buf)
		    local fn = vim.fn
		    local utils = require("auto-save.utils.data")	

		if
			fn.getbufvar(buf, "&modifiable") == 1 and
			utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
			return true -- met condition(s), can save
		end
		return false -- can't save
	end,
    write_all_buffers = false, -- write all buffers when the current one meets `condition`
    debounce_delay = 100, -- saves the file at most every `debounce_delay` milliseconds
	callbacks = { -- functions to be executed at different intervals
		enabling = nil, -- ran when enabling auto-save
		disabling = nil, -- ran when disabling auto-save
		before_asserting_save = nil, -- ran before checking `condition`
		before_saving = nil, -- ran before doing the actual save
		after_saving = nil -- ran after doing the actual save
	
    }
}
EOF
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
let bufferline.maximum_padding = 0
let bufferline.maximum_length = 100
nnoremap <silent>    <s-1> <cmd>BufferGoto 1<cr>
nnoremap <silent>    <s-2> <cmd>BufferGoto 2<cr>
nnoremap <silent>    <s-3> <cmd>BufferGoto 3<cr>
nnoremap <silent>    <s-4> <cmd>BufferGoto 4<cr>
nnoremap <silent>    <s-5> <cmd>BufferGoto 5<cr>
nnoremap <silent>    <s-6> <cmd>BufferGoto 6<cr>
nnoremap <silent>    <s-7> <cmd>BufferGoto 7<cr>
nnoremap <silent>    <s-8> <cmd>BufferGoto 8<cr>
nnoremap <silent>    <s-9> <cmd>BufferGoto 9<cr>
nnoremap <silent>    <s-0> <cmd>BufferLast<cr>
nnoremap <s-j> <c-w><c-j>
nnoremap <s-k> <c-w><c-k>
nnoremap <s-l> <c-w><c-l>
nnoremap <s-h> <c-w><c-h>
let g:fern#renderer = "nerdfont"
