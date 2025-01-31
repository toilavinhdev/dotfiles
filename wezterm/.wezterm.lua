local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- Core
config.automatically_reload_config = true
config.check_for_updates = false
config.default_prog = { "powershell.exe", "-NoLogo" }
config.default_cursor_style = 'SteadyUnderline'

-- Performances
config.max_fps = 120
config.prefer_egl = true
config.front_end = "OpenGL"
config.animation_fps = 1

-- Colors
config.color_scheme = 'Catppuccin Mocha'

-- Fonts
config.font = wezterm.font_with_fallback({
    { family = "JetBrainsMono Nerd Font", scale = 1, weight = "Bold", },
})
config.font_size = 9
config.line_height = 1
config.adjust_window_size_when_changing_font_size = false

-- Windows
config.window_decorations = "RESIZE"
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.window_background_opacity = 0.9
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 3000
config.initial_cols = 150
config.initial_rows = 40

-- Tabbars
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
}
config.status_update_interval = 1000
wezterm.on("update-status", function(window, pane)
    -- Normalize path
    local basename = function(s)
      -- Nothing a little regex can't fix
      return string.gsub(s, "(.*[/\\])(.*)", "%2")
    end

    -- Print working directory
    local pwd = pane:get_current_working_dir()
    if pwd then
      if type(pwd) == "userdata" then
        pwd = basename(pwd.file_path)
      else
        pwd = basename(pwd)
      end
    else
        pwd = ""
    end

    -- Current shell
    local cmd = pane:get_foreground_process_name()
    cmd = cmd and basename(cmd) or ""

    -- Current time
    local time = wezterm.strftime("%H:%M")
  
    -- Right status
    window:set_right_status(wezterm.format({
      { Text = wezterm.nerdfonts.md_folder .. "  " .. pwd },
      { Text = " | " },
      { Foreground = { Color = "#e0af68" } },
      { Text = wezterm.nerdfonts.fa_code .. "  " .. cmd },
      "ResetAttributes",
      { Text = " | " },
      { Text = wezterm.nerdfonts.md_clock .. "  " .. time },
      { Text = "  " },
    }))
  end
)

return config
