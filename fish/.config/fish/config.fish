# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end
##################################START OF AUTOSTART ###############
# "autostart"
function fish_greeting
test -r "~/.dir_colors" && eval (dircolors ~/.dir_colors)
end
#################################END OF AUTOSTART########################

################START OF EXPORTS##################################
#exports
echo "Welcome To Fish"
colorscript exec random
set -x BROWSER "firefox-nightly"
set -x LIBVA_DRIVER_NAME i965 
set -x LIBVA_DRIVERS_PATH /usr/lib/dri
set -x QT_PLUGIN_PATH /usr/lib/qt/plugins/
set -x QT_QPA_PLATFORM wayland
set -x XDG_CURRENT_DESKTOP sway
set -x MOZ_ENABLE_WAYLAND 1
set -x SWAY_CURSOR_THEME "Breeze"
set -x GTK_THEME Nordic
set -x PATH $HOME/.cargo/bin:$PATH
set -x PATH $HOME/.local/bin:$PATH
set -x EDITOR nvim
set -x LD_LIBRARY_PATH /usr/local/lib/
set -x LD_LIBRARY_PATH /usr/local/lib64/:$LD_LIBRARY_PATH



export TERM=xterm-256color
alias tsinit "/home/momofor/scripts/tsinit.fish"
alias c "z"
alias deno "/home/momofor/.deno/bin/deno"
alias l "exa-linux-x86_64 -la"  
alias obsidian "~/Applications/Obsidian-0.10.13_0632d66a95a85ab51525bd7325b85c39.AppImage"
alias runescapeu "flatpak run com.jagex.RuneScape "
alias devdocs "~/scripts/devdocs-run.sh"
alias gp "git pull"
alias gpo "git pull origin master"
alias gcl "git clone"
alias please "sudo"
alias myip "ip -4 -brief -c address"
alias mydns "nslookup gnu.org"
abbr cht curl cht.sh/

alias cl=clear
alias neo=neofetch
alias n=nvim
alias nz="nvim ~/.zshrc"
alias l=exa
# alias g=git
alias naw="nvim ~/.config/awesome/rc.lua"
alias t=tmux
alias watchu="mpv --hwdec=auto --ytdl-format='(best[height<=720]/bestvideo+bestaudio)'"
alias U="sudo apt update && sudo apt upgrade"
alias ll="exa -la"
alias sz="source ~/.zshrc"
alias ft="freetube --use-gl=desktop --enable-features=VaapiVideoDecoder"
alias C="sudo apt autoremove && sudo apt autoclean"
alias upd="sudo pacman -Sy && sudo powerpill -Su && paru -Su"
alias spo="LD_PRELOAD=/usr/lib/spotify-adblock.so spotify"
alias pkgcount="paru -Qa | wc -l"
alias cr="colorscript random"
alias recordu="/usr/lib/xdg-desktop-portal -r & /usr/lib/xdg-desktop-portal-wlr"
alias night="gammastep -O 5000K"

###############END OF EXPORTS############################################
starship init fish | source

