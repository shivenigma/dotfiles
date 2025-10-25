-- Pull in the wezterm API
local wezterm = require("wezterm")

-- import actions
local act = wezterm.action

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18
config.color_scheme = 'Bim (Gogh)'
config.window_background_opacity = 0.6

-- Disable the tab bar if needed
-- config.enable_tab_bar = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
config.pane_focus_follows_mouse = true
config.scrollback_lines = 5000

-- setting up control + space as leader key to mimic tmux setup
config.leader = { key = 'Space', mods = 'CTRL', timeout_milliseconds = 2000 }

config.keys = {

    -- --------------------------------------------------------------------------
    -- TABS -- Mimic my own Tmux keybindings as much as possible
    -- --------------------------------------------------------------------------
    -- Opens the tab navigator list
    {
        key = 'w',
        mods = 'LEADER',
        action = act.ShowTabNavigator,
    },
    -- Move to next/previous TAB
    {
        key = 'n',
        mods = 'LEADER',
        action = act.ActivateTabRelative(1),
    },
    {
        key = 'p',
        mods = 'LEADER',
        action = act.ActivateTabRelative(-1),
    },
    -- Close tab
    {
        key = 'q',
        mods = 'LEADER',
        action = act.CloseCurrentTab { confirm = true },
    },
    -- Tmux Panes
    -- -- Vertical split
    {
        -- |
        key = '|',
        mods = 'LEADER|SHIFT',
        action = act.SplitPane {
            direction = 'Right',
            size = { Percent = 50 },
        },
    },
    -- Horizontal split
    {
        -- -
        key = '-',
        mods = 'LEADER',
        action = act.SplitPane {
            direction = 'Down',
            size = { Percent = 50 },
        },
    },
    -- Close current pane
    {
        key = 'x',
        mods = 'LEADER',
        action = act.CloseCurrentPane { confirm = true },
    },
    -- LEADER + (h,t,n,s) to move between panes
    {
        key = 'h',
        mods = 'LEADER',
        action = act.ActivatePaneDirection 'Left',
    },
    {
        key = 't',
        mods = 'LEADER',
        action = act.ActivatePaneDirection 'Down',
    },
    {
        key = 'n',
        mods = 'LEADER',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 's',
        mods = 'LEADER',
        action = act.ActivatePaneDirection 'Right',
    },
    -- Shift + (h,t,n,s) to resize panes
    {
        key = 'h',
        mods = 'LEADER|SHIFT',
        action = act.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 't',
        mods = 'LEADER|SHIFT',
        action = act.AdjustPaneSize { 'Down', 5 },
    },
    {
        key = 'n',
        mods = 'LEADER|SHIFT',
        action = act.AdjustPaneSize { 'Up', 5 },
    },
    {
        key = 's',
        mods = 'LEADER|SHIFT',
        action = act.AdjustPaneSize { 'Right', 5 },
    },
    -- Take the current pane to fullscreen/window
    {
        key = 'z',
        mods = 'LEADER',
        action = act.TogglePaneZoomState,
    },
}


return config
