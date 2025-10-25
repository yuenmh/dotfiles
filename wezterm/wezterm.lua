local wezterm = require 'wezterm'

local font = wezterm.font_with_fallback {
	{ family = 'IosevkaTerm Nerd Font', weight = 'DemiBold' },
}

local theme_alt = 'Tokyo Night Moon'
local theme = 'Tokyo Night'

local font_size = 10.5

local themes = wezterm.color.get_builtin_schemes()

local config = wezterm.config_builder()

-- TODO: Make not hardcoded
config.default_prog = { 'start-container' }

config.font = font
config.font_size = font_size
config.warn_about_missing_glyphs = false
config.window_frame = {
	font = font,
	font_size = 10,
	active_titlebar_bg = themes[theme_alt].background,
	inactive_titlebar_bg = themes[theme_alt].background,
	active_titlebar_border_bottom = themes[theme_alt].background,
	inactive_titlebar_border_bottom = themes[theme_alt].background,
	button_bg = themes[theme_alt].background,
	button_hover_bg = themes[theme_alt].selection_bg,

	border_left_width = '1px',
	border_right_width = '1px',
	border_top_height = '1px',
	border_bottom_height = '1px',
	border_left_color = themes[theme].tab_bar.inactive_tab.bg_color,
	border_right_color = themes[theme].tab_bar.inactive_tab.bg_color,
	border_top_color = themes[theme].tab_bar.inactive_tab.bg_color,
	border_bottom_color = themes[theme].tab_bar.inactive_tab.bg_color,
}

config.window_decorations = 'NONE'
config.window_padding = {
	left = '2px',
	right = '2px',
	top = '2px',
	bottom = '2px',
}

config.command_palette_bg_color = themes[theme_alt].background
config.command_palette_fg_color = themes[theme_alt].foreground
config.command_palette_font_size = font_size

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = themes[theme].tab_bar.new_tab_hover.bg_color,
			fg_color = themes[theme].tab_bar.inactive_tab.bg_color,
		},
	},
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 100

config.color_scheme = theme
config.initial_rows = 48
config.initial_cols = 164

config.leader = { key = 'a', mods = 'CTRL' }
config.keys = {
	{ mods = 'LEADER', key = 'h', action = wezterm.action.ActivatePaneDirection 'Left' },
	{ mods = 'LEADER', key = 'j', action = wezterm.action.ActivatePaneDirection 'Down' },
	{ mods = 'LEADER', key = 'k', action = wezterm.action.ActivatePaneDirection 'Up' },
	{ mods = 'LEADER', key = 'l', action = wezterm.action.ActivatePaneDirection 'Right' },

	{ mods = 'LEADER', key = '1', action = wezterm.action.ActivateTab(0) },
	{ mods = 'LEADER', key = '2', action = wezterm.action.ActivateTab(1) },
	{ mods = 'LEADER', key = '3', action = wezterm.action.ActivateTab(2) },
	{ mods = 'LEADER', key = '4', action = wezterm.action.ActivateTab(3) },
	{ mods = 'LEADER', key = '5', action = wezterm.action.ActivateTab(4) },
	{ mods = 'LEADER', key = '6', action = wezterm.action.ActivateTab(5) },
	{ mods = 'LEADER', key = '7', action = wezterm.action.ActivateTab(6) },
	{ mods = 'LEADER', key = '8', action = wezterm.action.ActivateTab(7) },
	{ mods = 'LEADER', key = '9', action = wezterm.action.ActivateTab(8) },
	{ mods = 'LEADER', key = '0', action = wezterm.action.ActivateTab(9) },

	{ mods = 'CTRL', key = 'Backspace', action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' } },
	{ mods = 'CTRL', key = 'Delete', action = wezterm.action.SendKey { key = 'd', mods = 'ALT' } },
}

return config
