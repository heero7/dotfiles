-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight_storm'

-- On Windows this should be enabled. But Mac and Linux do not need
-- Allows a tmux like tabbing like in Windows
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
	config.enable_tab_bar = true
else
	config.enable_tab_bar = false
end

-- tab bar, to hide the tabs
config.use_fancy_tab_bar = false

-- Emulating Tmux on Windows. Wezterm is a multiplexer and the following should only be true
-- on Windows

-- and finally, return the configuration to wezterm
return config
