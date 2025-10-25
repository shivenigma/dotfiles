-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18
-- config.color_scheme = 'Banana Blueberry'
config.color_scheme = 'Bim (Gogh)'
config.window_background_opacity = 0.6
-- Disable the tab bar if needed
-- config.enable_tab_bar = false



return config
