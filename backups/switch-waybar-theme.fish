#!/bin/fish
set themes (ls ~/.config/waybar/themes)
set chosen_theme (for theme in $themes
	echo $theme
end | bemenu -i)
cp ~/.config/waybar/themes/$chosen_theme ~/.config/waybar/style.css
killall waybar > /dev/null &
sleep .1
waybar
