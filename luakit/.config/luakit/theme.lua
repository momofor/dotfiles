--------------------------
-- Default luakit theme --
--------------------------
local nord0= '#2e3440'
local nord1= '#3b4252'
local nord2= '#434c5e'
local nord3= '#4c566a'
local nord4= '#d8dee9'
local nord5= '#e5e9f0'
local nord6= '#eceff4'
local nord7= '#8fbcbb'
local nord8= '#88c0d0'
local nord9= '#81a1c1'
local nord10= '#5e81ac'
local nord11= '#bf616a'
local nord12= '#d08770'
local nord13= '#ebcb8b'
local nord14= '#a3be8c'
local nord15= '#b48ead'

local theme = {}

-- Default settings
theme.font = "12px Fira Code Nerd Font"
theme.fg   = nord4
theme.bg   = nord0

-- Genaral colours
theme.success_fg = nord5
theme.loaded_fg  = nord5
theme.error_fg = nord5
theme.error_bg = nord11

-- Warning colours
theme.warning_fg = nord5
theme.warning_bg = nord12

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = nord4
theme.menu_bg                   = nord1
theme.menu_selected_fg          = nord4
theme.menu_selected_bg          = nord3
theme.menu_title_bg             = nord1
theme.menu_primary_title_fg     = nord8
theme.menu_secondary_title_fg   = nord7

theme.menu_disabled_fg = "#999"
theme.menu_disabled_bg = theme.menu_bg
theme.menu_enabled_fg = theme.menu_fg
theme.menu_enabled_bg = theme.menu_bg
theme.menu_active_fg = "#060"
theme.menu_active_bg = theme.menu_bg

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = nord4
theme.sbar_bg         = nord1

-- Downloadbar specific
theme.dbar_fg         = "#fff"
theme.dbar_bg         = "#000"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = nord5
theme.ibar_bg           = nord3

-- Tab label
theme.tab_fg            = nord5
theme.tab_bg            = nord1
theme.tab_hover_bg      = "#292929"
theme.tab_ntheme        = "#ddd"
theme.selected_fg       = nord5
theme.selected_bg       = nord3
theme.selected_ntheme   = "#ddd"
theme.loading_fg        = nord5
theme.loading_bg        = nord1

theme.selected_private_tab_bg = "#3d295b"
theme.private_tab_bg    = "#22254a"

-- Trusted/untrusted ssl colours
theme.trust_fg          = nord8
theme.notrust_fg        = nord11

-- Follow mode hints
theme.hint_font = "10px monospace, courier, sans-serif"
theme.hint_fg = nord4
theme.hint_bg = nord3
theme.hint_border = "1px dashed #000"
theme.hint_opacity = "0.3"
theme.hint_overlay_bg = "rgba(255,255,153,0.3)"
theme.hint_overlay_border = "1px dotted #000"
theme.hint_overlay_selected_bg = "rgba(0,255,0,0.3)"
theme.hint_overlay_selected_border = theme.hint_overlay_border

-- General colour pairings
theme.ok = { fg = nord4, bg = nord0 }
theme.warn = { fg = nord12, bg = nord5 }
theme.error = { fg = nord11, bg = nord5 }

-- Gopher page style (override defaults)
theme.gopher_light = { bg = "#E8E8E8", fg = "#17181C", link = "#03678D" }
theme.gopher_dark  = { bg = "#17181C", fg = "#E8E8E8", link = "#f90" }

return theme

-- vim: et:sw=4:ts=8:sts=4:tw=80
