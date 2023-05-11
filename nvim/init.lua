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

require("plugins-configs.plugins")
require("plugins-configs.dracula-config")
require("plugins-configs.neodev-config")
-- require("plugins-configs.dap-config")
require("core-configs.edditor-config")
require("plugins-configs.mason-config")
require("plugins-configs.cmp-config")
require("plugins-configs.nvim-tree-config")
require("core-configs.edditor-keymaps")
require("plugins-configs.treesitter-config")
require("plugins-configs.lualine-config")
require("plugins-configs.telescope-config")
require("plugins-configs.bufferline-config")
require("core-configs.colorscheme-config")
require("plugins-configs.autopairs-config")
require("plugins-configs.autotag-config")
require("plugins-configs.markdown-preview-config")
require("plugins-configs.null-ls-config")
require("plugins-configs.gitsigns-config")
require("plugins-configs.lsp-config")
require("plugins-configs.git-nvim-config")
require("plugins-configs.lspsaga-config")
require("plugins-configs.noice-config")
require("plugins-configs.todo-comment-config")
require("plugins-configs.dressing-config")
require("plugins-configs.indent-blankline-config")
require("plugins-configs.notify-config")
require("plugins-configs.dashboard-config")
