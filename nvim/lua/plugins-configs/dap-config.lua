local mason_dap_status, mason_dap = pcall(require, "mason-nvim-dap")
if not mason_dap_status then
	return
end

local dap_status, dap = pcall(require, "dap")
if not dap_status then
	return
end

local dap_ui_status, dap_ui = pcall(require, "dapui")
if not dap_ui_status then
	return
end

mason_dap.setup({ automatic_setup = true })
mason_dap.setup_handlers()
dap_ui.setup()
