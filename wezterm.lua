local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    window_close_confirmation = "NeverPrompt",
    hide_tab_bar_if_only_one_tab = true,
    window_decorations = "RESIZE",
    color_scheme = "Tokyo Night (Gogh)",
    window_background_opacity = 0.90,
    font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
    font_size = 12.5,
    send_composed_key_when_left_alt_is_pressed = true,
    use_dead_keys = true,
    macos_window_background_blur = 70,
}

config.window_frame = {
    active_titlebar_bg = "#1f2335",
    inactive_titlebar_bg = "#1f2335",
}

-- window borders
config.window_frame = {
    border_left_width = "0.5cell",
    border_left_color = "#2e3136",
    border_right_width = "0.5cell",
    border_right_color = "#2e3136", 
    border_top_height = "0.25cell",
    border_top_color = "#2e3136",
    border_bottom_height = "0.25cell",
    border_bottom_color = "#2e3136",
}
--config.window_padding = {
    --left = "1.1cell",
    --right = "1.1cell",
    --top = "0.5cell",
    --bottom = "0.5cell"
--}

config.colors = {
    tab_bar = {
        background = "#1f2335",
        active_tab = {
            bg_color = "#1f2335",
            fg_color = "#c0caf5",
            intensity = "Bold",
        },
        inactive_tab = {
            bg_color = "#1f2335",
            fg_color = "#545c7e",
            intensity = "Half",
        },
        inactive_tab_hover = {
            bg_color = "#1f2335",
            fg_color = "#c0caf5",
            intensity = "Normal",
        },
        new_tab = {
            bg_color = "#1f2335",
            fg_color = "#545c7e",
            intensity = "Half",
        },
    },
}

config.keys = {
    -- Create new window in home directory
    -- SHIFT + CMD + n
    {
        key = 'n',
        mods = 'SHIFT|CMD',
        action = wezterm.action.SpawnCommandInNewWindow {
            cwd = wezterm.home_dir
        },
    },
}

return config
