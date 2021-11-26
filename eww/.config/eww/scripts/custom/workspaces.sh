#!/bin/bash

# Checks if a list ($1) contains an element ($2)

print_workspaces() {
    buf=""
    desktops=$(swaymsg -t get_workspaces)
    
    for d in $desktops; do
		if [ "$(contains "(focused)" "$d")" -eq 1 ]; then
            ws=$d
            icon=""
            class="focused"
		elif [ "$(contains "(off-screen)" "$d")" -eq 1 ]; then
            ws=$d
            icon=""
            class="occupied"
        fi  

        buf="$buf (eventbox :cursor \"hand\" (button :class \"$class\" :onclick \"bspc desktop -f $ws\" \"$icon\"))"
    done

    echo "(box :class \"workspaces\" :halign \"center\" :valign \"center\" :vexpand true :hexpand true $buf)"
}

# Listen to bspwm changes
while true 
do 
	sleep 1
	print_workspaces 
	sleep 1
done
