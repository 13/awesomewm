---------------------------
-- solbn awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_configuration_dir() .. "themes/solbn/"
local theme_name = themes_path .. "solbn/"

local theme = {}

theme.font          = "xos4 Terminus 9"
--theme.font          = "Monaco 9"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)

theme.colors = {}
theme.colors.base3   = "#002b36ff"
theme.colors.base2   = "#073642ff"
theme.colors.base1   = "#586e75ff"
theme.colors.base0   = "#657b83ff"
theme.colors.base00  = "#839496ff"
theme.colors.base01  = "#93a1a1ff"
theme.colors.base02  = "#eee8d5ff"
theme.colors.base03  = "#fdf6e3ff"
theme.colors.yellow  = "#b58900ff"
theme.colors.orange  = "#cb4b16ff"
theme.colors.red     = "#dc322fff"
theme.colors.magenta = "#d33682ff"
theme.colors.violet  = "#6c71c4ff"
theme.colors.blue    = "#268bd2ff"
theme.colors.cyan    = "#2aa198ff"
theme.colors.green   = "#859900ff"

theme.fg_normal  = theme.colors.base01
theme.fg_focus   = theme.colors.base03
theme.fg_urgent  = theme.colors.base3

theme.bg_normal  = theme.colors.base3
theme.bg_focus   = theme.colors.base1
theme.bg_urgent  = theme.colors.red
theme.bg_systray = theme.bg_normal

theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = theme.bg_urgent

theme.titlebar_bg_focus  = theme.bg_focus
theme.titlebar_bg_normal = theme.bg_normal

theme.mouse_finder_color = theme.colors.green

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."icons/submenu.png"
theme.menu_height = dpi(16)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."icons/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."icons/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."icons/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."icons/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."icons/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."icons/titlebar/maximized_focus_active.png"

--theme.wallpaper = themes_path.."background.png"
--gears.wallpaper.set("#000000")

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."layouts18/fairh.png"
theme.layout_fairv = themes_path.."layouts18/fairv.png"
theme.layout_floating  = themes_path.."layouts18/floating.png"
theme.layout_magnifier = themes_path.."layouts18/magnifier.png"
theme.layout_max = themes_path.."layouts18/max.png"
theme.layout_fullscreen = themes_path.."layouts18/fullscreen.png"
theme.layout_tilebottom = themes_path.."layouts18/tilebottom.png"
theme.layout_tileleft   = themes_path.."layouts18/tileleft.png"
theme.layout_tile = themes_path.."layouts18/tile.png"
theme.layout_tiletop = themes_path.."layouts18/tiletop.png"
theme.layout_spiral  = themes_path.."layouts18/spiral.png"
theme.layout_dwindle = themes_path.."layouts18/dwindle.png"
theme.layout_cornernw = themes_path.."layouts18/cornernww.png"
theme.layout_cornerne = themes_path.."layouts18/cornernew.png"
theme.layout_cornersw = themes_path.."layouts18/cornersww.png"
theme.layout_cornerse = themes_path.."layouts18/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.tasklist_disable_icon = true


return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
