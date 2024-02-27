local wezterm = require 'wezterm'
local theme = require 'theme'

local config = wezterm.config_builder()

theme.decorate(config)

config.hide_tab_bar_if_only_one_tab = true

return config
