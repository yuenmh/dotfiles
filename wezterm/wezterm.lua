local wezterm = require("wezterm")

return {
	font = wezterm.font("Iosevka", { weight = "DemiBold" }),
	font_size = 10.5,
	color_scheme = "Tokyo Night",
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	tab_max_width = 100,

	leader = { key = "a", mods = "CTRL" },
	keys = {
		{ mods = "LEADER", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
		{ mods = "LEADER", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
		{ mods = "LEADER", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
		{ mods = "LEADER", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },

		{ mods = "LEADER", key = "1", action = wezterm.action.ActivateTab(0) },
		{ mods = "LEADER", key = "2", action = wezterm.action.ActivateTab(1) },
	},
}
