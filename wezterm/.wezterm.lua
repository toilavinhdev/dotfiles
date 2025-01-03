local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.check_for_updates = false

config.default_prog = { "powershell.exe", "-NoLogo" }
config.default_cursor_style = 'SteadyUnderline'

config.max_fps = 120
config.prefer_egl = true
config.front_end = "OpenGL"
config.animation_fps = 1

config.window_decorations = "RESIZE"
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.window_background_opacity = 0.9
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.initial_cols = 150

config.font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Medium' })
config.font_size = 9
config.line_height = 1
config.adjust_window_size_when_changing_font_size = false
config.color_scheme = 'Catppuccin Mocha'

return config