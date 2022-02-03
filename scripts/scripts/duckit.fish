#!/usr/bin/fish
echo "ducking: $argv"
xdg-open "https://www.duckduckgo.com/?q="(string escape --style url $argv)
