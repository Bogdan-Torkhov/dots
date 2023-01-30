local setup, packer = pcall(require, "packer")
if not setup then
	return
end

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
	-- install packer
	use("wbthomason/packer.nvim")
	-- bootstap packer
	if packer_bootstrap then
		require("packer").sync()
	end
	-- dracula theme
	use("dracula/vim")
	-- file viewer
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	-- telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")
	use("cljoly/telescope-repo.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-telescope/telescope-project.nvim")
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	-- lsp plugins
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/cmp-vsnip")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jay-babu/mason-null-ls.nvim")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- vs code like icons
	use("onsails/lspkind.nvim")
	-- markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
	-- git
	use("dinhhuy258/git.nvim")
	use("lewis6991/gitsigns.nvim")
	-- bar and down line
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	-- auto-pairs and auto-tags
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	-- nvim transparency
	use("xiyaowong/nvim-transparent")
	-- terminal emulator inside neovim
	use("akinsho/toggleterm.nvim")
	-- colorize colors(hex,rgb)
	use("norcalli/nvim-colorizer.lua")
end)
