# == Options

# Border size in pixel of the windows
set :border, 2

# Window move/resize steps in pixel per keypress
set :step, 5

# Window screen border snapping
set :snap, 10

# Default starting gravity for windows (0 = gravity of last client)
set :gravity, :center

# Make transient windows urgent
set :urgent, false

# Honor resize size hints globally
set :resize, false

# Screen strut for e.g. other panels (left, right, top, bottom)
set :strut, [ 0, 0, 0, 0 ]

# Font string either take from e.g. xfontsel or use xft
set :font, "xft:pragmata:pixelsize=9:antialias=true:hinting:true"

# Space around windows
set :gap, 3

# Panel size padding (left, right, top, bottom)
set :padding, [ 0, 0, 2, 2 ]

# Separator between sublets
set :separator, "|"

# Outline border size in pixel of panel items
set :outline, 0
# Set the WM_NAME of subtle (Java quirk)
# set :wmname, "LG3D"

# == Screen

screen 1 do
  top    [ :views, :separator, :title, :spacer, :keychain, :spacer, :tray, :separator, :memory, :separator, :cpu, :separator, :pacman, :separator, :mpd, :separator, :fuzzytime, :separator, :layout, ]
  bottom [ ]
end

# == Colors

# Colors of focus window title
color :title_fg,        "#909090"
color :title_bg,        "#202020"
color :title_border,    "#202020"

# Colors of the active views
color :focus_fg,        "#e6e6e6"
color :focus_bg,        "#202020"
color :focus_border,    "#202020"

# Colors of urgent window titles and views
color :urgent_fg,       "#d7cd94"
color :urgent_bg,       "#202020"
color :urgent_border,   "#202020"

# Colors of occupied views (views with clients)
color :occupied_fg,     "#707070"
color :occupied_bg,     "#202020"
color :occupied_border, "#202020"

# Color of view buttons
color :views_fg,        "#303030"
color :views_bg,        "#202020"
color :views_border,    "#202020"

# Colors of sublets
color :sublets_fg,      "#AAAAAA"
color :sublets_bg,      "#202020"
color :sublets_border,  "#202020"

# Border colors of active/inactive windows
color :client_active,   "#e3e3e3"
color :client_inactive, "#404040"

# Background colors of panels
color :panel,           "#202020"

# Background color of root background
color :background,      "#707070"

# Color of the stipple (if enabled)
color :stipple,         "#757575"

# Color of the separator
color :separator,       "#757575"

# == Gravities

  # top left

gravity :topl_a1,       [   0,   0,  33,  33 ]
gravity :topl_a2,       [   0,   0,  50,  33 ]
gravity :topl_a3,       [   0,   0,  67,  33 ]

gravity :topl_b1,       [   0,   0,  33,  50 ]
gravity :topl_b2,       [   0,   0,  50,  50 ]
gravity :topl_b3,       [   0,   0,  67,  50 ]

gravity :topl_c1,       [   0,   0,  33,  67 ]
gravity :topl_c2,       [   0,   0,  50,  67 ]
gravity :topl_c3,       [   0,   0,  67,  67 ]
  
  # top center

gravity :topc_a1,       [   0,   0, 100,  50 ]
gravity :topc_a2,       [   0,   0, 100,  67 ]
gravity :topc_a3,       [   0,   0, 100,  33 ]

gravity :topc_b1,       [  50,   0,  34,  33 ]
gravity :topc_b2,       [  50,   0,  34,  50 ]
gravity :topc_b3,       [  50,   0,  34,  67 ]

  # top right

gravity :topr_a1,       [ 100,   0,  33,  33 ]
gravity :topr_a2,       [ 100,   0,  50,  33 ]
gravity :topr_a3,       [ 100,   0,  67,  33 ]

gravity :topr_b1,       [ 100,   0,  33,  50 ]
gravity :topr_b2,       [ 100,   0,  50,  50 ]
gravity :topr_b3,       [ 100,   0,  67,  50 ]

gravity :topr_c1,       [ 100,   0,  33,  67 ]
gravity :topr_c2,       [ 100,   0,  50,  67 ]
gravity :topr_c3,       [ 100,   0,  67,  67 ]

  # left 

gravity :left_a1,       [   0,  50,  33,  34 ]
gravity :left_a2,       [   0,  50,  50,  34 ]
gravity :left_a3,       [   0,  50,  67,  34 ]

gravity :left_b1,       [   0,  50,  33, 100 ]
gravity :left_b2,       [   0,  50,  50, 100 ]
gravity :left_b3,       [   0,  50,  67, 100 ]

  # center

gravity :center,        [   0,   0, 100, 100 ]

  # right

gravity :right_a1,      [ 100,  50,  33,  34 ]
gravity :right_a2,      [ 100,  50,  50,  34 ]
gravity :right_a3,      [ 100,  50,  67,  34 ]

gravity :right_b1,      [ 100,  50,  33, 100 ]
gravity :right_b2,      [ 100,  50,  50, 100 ]
gravity :right_b3,      [ 100,  50,  67, 100 ]

  # bottom left

gravity :bottoml_a1,    [   0, 100,  33,  33 ]
gravity :bottoml_a2,    [   0, 100,  50,  33 ]
gravity :bottoml_a3,    [   0, 100,  67,  33 ]

gravity :bottoml_b1,    [   0, 100,  33,  50 ]
gravity :bottoml_b2,    [   0, 100,  50,  50 ]
gravity :bottoml_b3,    [   0, 100,  67,  50 ]

gravity :bottoml_c1,    [   0, 100,  33,  67 ]
gravity :bottoml_c2,    [   0, 100,  50,  67 ]
gravity :bottoml_c3,    [   0, 100,  67,  67 ]  

  # bottom center

gravity :bottomc_a1,    [   0, 100, 100,  50 ]
gravity :bottomc_a2,    [   0, 100, 100,  67 ]
gravity :bottomc_a3,    [   0, 100, 100,  33 ]

gravity :bottomc_b1,    [  50, 100,  34,  33 ]
gravity :bottomc_b2,    [  50, 100,  34,  50 ]
gravity :bottomc_b3,    [  50, 100,  34,  67 ]

  # bottom right

gravity :bottomr_a1,    [ 100, 100,  33,  33 ]
gravity :bottomr_a2,    [ 100, 100,  50,  33 ]
gravity :bottomr_a3,    [ 100, 100,  67,  33 ]

gravity :bottomr_b1,    [ 100, 100,  33,  50 ]
gravity :bottomr_b2,    [ 100, 100,  50,  50 ]
gravity :bottomr_b3,    [ 100, 100,  67,  50 ]

gravity :bottomr_c1,    [ 100, 100,  33,  67 ]
gravity :bottomr_c2,    [ 100, 100,  50,  67 ]
gravity :bottomr_c3,    [ 100, 100,  67,  67 ]

  # Gimp

gravity :gimp_image,    [  50,  50,  80, 100 ]
gravity :gimp_toolbox,  [   0,   0,  10, 100 ]
gravity :gimp_dock,     [ 100,   0,  10, 100 ]

# == Grabs

# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4

# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4

# Select next and prev view */
grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-s", :WindowStick

# Raise window
grab "W-r", :WindowRaise

# Lower window
grab "W-l", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-Down",  :WindowDown
grab "W-Up",    :WindowUp
grab "W-Right", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# In case no numpad is available e.g. on notebooks

grab "W-q", [ :topl_a1, :topl_a2, :topl_a3, :topl_b1, :topl_b2, :topl_b3, :topl_c1, :topl_c2, :topl_c3 ]
grab "W-w", [ :topc_a1, :topc_a2, :topc_a3, :topc_b1, :topc_b2, :topc_b3                               ]
grab "W-e", [ :topr_a1, :topr_a2, :topr_a3, :topr_b1, :topr_b2, :topr_b3, :topr_c1, :topr_c2, :topr_c3 ]

grab "W-a", [ :left_a1,     :left_a2,   :left_a3,   :left_b1,   :left_b2,   :left_b3  ]
grab "W-d", [ :right_a1,    :right_a2,  :right_a3,  :right_b1,  :right_b2,  :right_b3 ]

grab "W-z", [ :bottoml_a1, :bottoml_a2, :bottoml_a3, :bottoml_b1, :bottoml_b2, :bottoml_b3, :bottoml_c1, :bottoml_c2, :bottoml_c3 ]
grab "W-x", [ :bottomc_a1, :bottomc_a2, :bottomc_a3, :bottomc_b1, :bottomc_b2, :bottomc_b3                                        ]
grab "W-c", [ :bottomr_a1, :bottomr_a2, :bottomr_a3, :bottomr_b1, :bottomr_b2, :bottomr_b3, :bottomr_c1, :bottomr_c2, :bottomr_c3 ]

# Exec programs
grab "W-Return", "urxvt"
grab "A-F2", 'dmenu_run -fn "-*-terminus-medium-r-*-*-12-*-*-*-*-*-*-*" -nb "#202020" -nf "#757575" -sb "#757575" -sf "#202020" -p "RUN:" -i'
grab "XF86AudioMute", "amixer sset Master toggle"
grab "XF86AudioLowerVolume", "amixer set Master 1%- unmute"
grab "XF86AudioRaiseVolume", "amixer set Master 1%+ unmute"
grab "XF86HomePage", "firefox"

# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end

# == Tags

# Simple tags
tag "terms",   "xterm|[u]?rxvt"
tag "browser", "uzbl|opera|firefox|navigator"
tag "filem",   "thunar" 

# Placement
tag "editor" do
  match  "[g]?vim"
  resize true
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|gvim"
  resize true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "mplayer"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end

# Gimp
tag "gimp_image" do
  match   :role => "gimp-image-window"
  gravity :gimp_image
end

tag "gimp_toolbox" do
  match   :role => "gimp-toolbox$"
  gravity :gimp_toolbox
end

tag "gimp_dock" do
  match   :role => "gimp-dock"
  gravity :gimp_dock
end

# == Views

view "terms",       "terms|default"
view "code",        "editor"
view "browser",     "browser"
view "misc",        "gimp_.*|filem"


#  vim: set ts=2 sw=2 tw=0 :
