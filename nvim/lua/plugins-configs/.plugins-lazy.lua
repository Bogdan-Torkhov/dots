local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
require("lazy").setup({
	config = function(plugin)
		vim.opt.rtp:append(plugin.dir .. "/custom-rtp")
	end,
	-- gruvbox theme
	"ellisonleao/gruvbox.nvim",
	-- dracula theme
	"dracula/vim",
	-- file viewer
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	-- telescope
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	"cljoly/telescope-repo.nvim",
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-telescope/telescope-project.nvim",
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	-- lsp plugins
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"hrsh7th/cmp-vsnip",
	"jose-elias-alvarez/null-ls.nvim",
	"jay-babu/mason-null-ls.nvim",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	-- vs code like icons(
	"onsails/lspkind.nvim",
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	-- git
	"dinhhuy258/git.nvim",
	"lewis6991/gitsigns.nvim",
	{ "romgrk/barbar.nvim", wants = "nvim-web-devicons" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	-- auto-pairs and auto-tags
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	-- nvim transparency
	"xiyaowong/nvim-transparent",
	-- wakatime plugin
	"wakatime/vim-wakatime",
	-- terminal emulator inside neovim
	"akinsho/toggleterm.nvim",
	-- colorize colors(hex,rgb)
	"norcalli/nvim-colorizer.lua",
})