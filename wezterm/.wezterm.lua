local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-- Core
config.automatically_reload_config = true
config.check_for_updates = false
config.default_cursor_style = 'SteadyUnderline'

-- Performances
config.max_fps = 120
config.prefer_egl = true
config.front_end = "OpenGL"
config.animation_fps = 1

-- Windows
config.window_decorations = "RESIZE"
config.window_frame = {
  border_left_width = '1px',
  border_right_width = '1px',
  border_bottom_height = '1px',
  border_top_height = '1px',
  border_left_color = '#444444',
  border_right_color = '#444444',
  border_bottom_color = '#444444',
  border_top_color = '#444444',
}
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.window_background_opacity = 0.9
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 3000
config.initial_cols = 160
config.initial_rows = 40

-- Colors
config.color_scheme = 'Catppuccin Mocha'

-- Tabbar
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false

-- Fonts
config.font = wezterm.font_with_fallback({
    { family = "JetBrainsMono Nerd Font", scale = 1, weight = "Medium", },
})
config.font_size = 13
config.line_height = 1
config.adjust_window_size_when_changing_font_size = false

return config
