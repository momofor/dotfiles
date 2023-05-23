#!/bin/sh
SINK=$(wpctl status > test-sed && grep -m1 -A 10 "Audio" test-sed | grep "Sinks:" -m 1 -A 1 | rg -o -m1 "\d+" | rg -m1 "")
gawk -v sink=$SINK  -i inplace '{ gsub(/\$sink_name=\s?[0-9]+/, "$sink_name=" sink) }; { print }' .config/hypr/hyprland.conf
