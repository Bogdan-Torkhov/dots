local lazy_status, lazy = pcall(require, "lazy")
if not lazy_status then
	return
end

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

lazy.setup({
	-- dracula theme
	{
		"maxmx03/dracula.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd("colorscheme dracula")
		end,
	}, -- dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	}, -- file viewer
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons", -- telescope
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	"cljoly/telescope-repo.nvim",
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-telescope/telescope-project.nvim",
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	}, -- lsp plugins
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"mason-org/mason-registry",
	"hrsh7th/cmp-vsnip",
	"jose-elias-alvarez/null-ls.nvim",
	"jay-babu/mason-null-ls.nvim",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"mfussenegger/nvim-dap",
	"jay-babu/mason-nvim-dap.nvim",
	"rcarriga/nvim-dap-ui",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	-- vs code like icons
	"onsails/lspkind.nvim", -- markdown
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npx --yes yarn install",
		ft = { "markdown" },
	}, -- git
	"dinhhuy258/git.nvim",
	"lewis6991/gitsigns.nvim", -- bar and down line
	"akinsho/bufferline.nvim",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	}, -- auto-pairs and auto-tags
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag", -- wakatime plugin
	"wakatime/vim-wakatime", -- colorize colors(hex,rgb)
	"norcalli/nvim-colorizer.lua", -- cool lsp ui
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			-- Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}, -- plugins to look cool
	{ "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim" },
	{
		"folke/noice.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	},
	"stevearc/dressing.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	"echasnovski/mini.nvim", -- rainbow brackets for tree-sitter
	"HiPhish/nvim-ts-rainbow2",
	"folke/neodev.nvim",
})
