local wezterm = require("wezterm")

return {
	-- TODO: Make not hardcoded
	default_prog = { "distrobox", "enter", "ubuntu", "-e", "fish" },

	font = wezterm.font("Iosevka", { weight = "DemiBold" }),
	font_size = 10.5,
	color_scheme = "Tokyo Night",
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	tab_max_width = 100,
	initial_rows = 36,
	initial_cols = 144,

	leader = { key = "a", mods = "CTRL" },
	keys = {
		{ mods = "LEADER", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
		{ mods = "LEADER", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
		{ mods = "LEADER", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
		{ mods = "LEADER", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },

		{ mods = "LEADER", key = "1", action = wezterm.action.ActivateTab(0) },
		{ mods = "LEADER", key = "2", action = wezterm.action.ActivateTab(1) },
		{ mods = "LEADER", key = "3", action = wezterm.action.ActivateTab(2) },
		{ mods = "LEADER", key = "4", action = wezterm.action.ActivateTab(3) },
		{ mods = "LEADER", key = "5", action = wezterm.action.ActivateTab(4) },
		{ mods = "LEADER", key = "6", action = wezterm.action.ActivateTab(5) },
		{ mods = "LEADER", key = "7", action = wezterm.action.ActivateTab(6) },
		{ mods = "LEADER", key = "8", action = wezterm.action.ActivateTab(7) },
		{ mods = "LEADER", key = "9", action = wezterm.action.ActivateTab(8) },
		{ mods = "LEADER", key = "0", action = wezterm.action.ActivateTab(9) },
	},
}
