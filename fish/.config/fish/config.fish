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
zoxide init fish | source
#################################END OF AUTOSTART########################

################START OF EXPORTS##################################
#exports
set -x EDITOR nvim
set -x BROWSER firefox-trunk

set -U fish_user_paths /home/momofor/.cargo/bin/ $fish_user_paths
export TERM=xterm-256color
alias tsinit "/home/momofor/scripts/tsinit.fish"
alias deno "/home/momofor/.deno/bin/deno"
alias l "exa-linux-x86_64 -la"  
alias obsidian "~/Applications/Obsidian-0.10.13_0632d66a95a85ab51525bd7325b85c39.AppImage"
alias runescapeu "flatpak run com.jagex.RuneScape "
alias devdocs "~/scripts/devdocs-run.sh"
alias c z
alias gp "git pull"
alias gpo "git pull origin master"
alias gcl "git clone"
alias please "sudo"
alias myip "ip -4 -brief -c address"
alias mydns "nslookup gnu.org"
abbr cht curl cht.sh/
###############END OF EXPORTS############################################
starship init fish | source

