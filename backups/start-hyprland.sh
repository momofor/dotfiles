#!/bin/dash
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP&
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP&

swaybg -o "*" -i $HOME/.other/Wallpapers/catppuccin/under_the_night_sky_by_bisbiswas_ddfk819-fullview.jpg -m "fit" &
waybar &

~/.config/sway/import-gsettings &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1  &
/usr/lib/xdg-desktop-portal -r & /usr/lib/xdg-desktop-portal-wlr &
wl-paste -t text --watch clipman store &
mako &

sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
/usr/lib/kdeconnectd
