-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- font_family      Mononoki Nerd Font Mono Regular
config.font = wezterm.font("Mononoki Nerd Font Mono")
config.font_size = 16.0

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"
config.window_background_opacity = 0.4
config.tab_bar_at_bottom = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 10,
	bottom = 0,
}

config.keys = {
	{
		key = "T",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	{
		key = "T",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	-- Move to left tab
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	-- Move to right tab
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 16.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "rgba(0, 0, 0, 0)",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "rgba(0, 0, 0, 0)",
}
config.inactive_pane_hsb = {
	saturation = 1.0,
	brightness = 0.5,
}
config.colors = {
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = "#575757",
		-- The color of the active tab
		active_tab = {
			bg_color = "#7495f7", -- DodgerBlue
			fg_color = "#333333", -- White text
		},
	},
}
-- and finally, return the configuration to wezterm
return config
