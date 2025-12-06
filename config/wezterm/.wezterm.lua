local wezterm = require("wezterm")
local config = wezterm.config_builder()
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

config.default_prog = { "pwsh.exe" }
config.leader = { key = " ", mods = "CTRL" }

config.font_size = 12
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("Cascadia Code NF")

tabline.setup({
	options = {
		theme = "Catppuccin Mocha",
	},
	sections = {
		tabline_b = {},
		tabline_x = {},
		tabline_y = { "datetime" },
		tabline_z = { "hostname" },
	},
})
tabline.apply_to_config(config)

config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "a",
		mods = "LEADER",
		action = wezterm.action.ActivateTab(0),
	},
	{
		key = "s",
		mods = "LEADER",
		action = wezterm.action.ActivateTab(1),
	},
	{
		key = "d",
		mods = "LEADER",
		action = wezterm.action.ActivateTab(2),
	},
	{
		key = "f",
		mods = "LEADER",
		action = wezterm.action.ActivateTab(3),
	},
	{
		key = "g",
		mods = "LEADER",
		action = wezterm.action.ActivateTab(4),
	},
}

return config
