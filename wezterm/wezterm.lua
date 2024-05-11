local wezterm = require("wezterm")

local font = wezterm.font_with_fallback({
	{ family = "IosevkaTerm Nerd Font", weight = "DemiBold" },
})

local titlebar_theme = "Tokyo Night Moon"
local theme = "Tokyo Night"

local themes = wezterm.color.get_builtin_schemes()

return {
	-- TODO: Make not hardcoded
	default_prog = { "distrobox", "enter", "ubuntu", "-e", "fish" },

	font = font,
	font_size = 10.5,
	window_frame = {
		font = font,
		font_size = 10,
		active_titlebar_bg = themes[titlebar_theme].background,
		inactive_titlebar_bg = themes[titlebar_theme].background,
		active_titlebar_border_bottom = themes[titlebar_theme].background,
		inactive_titlebar_border_bottom = themes[titlebar_theme].background,
		button_bg = themes[titlebar_theme].background,
		button_hover_bg = themes[titlebar_theme].selection_bg,

		border_left_width = "0.75cell",
		border_right_width = "0.75cell",
		border_bottom_height = "0.25cell",
		border_left_color = themes[titlebar_theme].background,
		border_right_color = themes[titlebar_theme].background,
		border_bottom_color = themes[titlebar_theme].background,
	},

	color_scheme = theme,
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
