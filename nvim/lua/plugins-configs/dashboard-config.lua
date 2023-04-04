local dashboard_status, dashboard = pcall(require, "dashboard")
if not dashboard_status then
	return
end

local draculaconfig = {
	theme = "doom",
	config = {
		header = {
			[[                                                              ]],
			[[                                                              ]],
			[[                                                              ]],
			[[                                                              ]],
			[[                                                              ]],
			[[                                                              ]],
			[[                                                              ]],
			[[▓█████▄  ██▀███   ▄▄▄       ▄████▄   █    ██  ██▓    ▄▄▄      ]],
			[[▒██▀ ██▌▓██ ▒ ██▒▒████▄    ▒██▀ ▀█   ██  ▓██▒▓██▒   ▒████▄    ]],
			[[░██   █▌▓██ ░▄█ ▒▒██  ▀█▄  ▒▓█    ▄ ▓██  ▒██░▒██░   ▒██  ▀█▄  ]],
			[[░▓█▄   ▌▒██▀▀█▄  ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓▓█  ░██░▒██░   ░██▄▄▄▄██ ]],
			[[░▒████▓ ░██▓ ▒██▒ ▓█   ▓██▒▒ ▓███▀ ░▒▒█████▓ ░██████▒▓█   ▓██▒]],
			[[ ▒▒▓  ▒ ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ░▒ ▒  ░░▒▓▒ ▒ ▒ ░ ▒░▓  ░▒▒   ▓▒█░]],
			[[ ░ ▒  ▒   ░▒ ░ ▒░  ▒   ▒▒ ░  ░  ▒   ░░▒░ ░ ░ ░ ░ ▒  ░ ▒   ▒▒ ░]],
			[[ ░ ░  ░   ░░   ░   ░   ▒   ░         ░░░ ░ ░   ░ ░    ░   ▒   ]],
			[[   ░       ░           ░  ░░ ░         ░         ░  ░     ░  ░]],
			[[ ░                         ░                                  ]],
		},
		center = {
			{
				icon = " ",
				desc = "Find File           ",
				key = "f",
				action = "Telescope find_files",
			},
			{
				icon = " ",
				desc = "Recent files",
				key = "r",
				action = "Telescope oldfiles",
			},
			{
				icon = " ",
				desc = "Recent Text",
				key = "r",
				action = "Telescope live_grep",
			},
			{
				icon = " ",
				desc = "Update packages",
				key = "u",
				action = "Lazy sync",
			},
			{
				icon = " ",
				desc = "TreeSitter",
				key = "t",
				action = "TSInstall all | TSUpdate all",
			},
			{ icon = " ", desc = "Mason", key = "m", action = "Mason" },
		},
		footer = { "", "Deusbog Nvim with dracula theme" },
	},
}

dashboard.setup(draculaconfig)
