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
}

-- and finally, return the configuration to wezterm
return config
