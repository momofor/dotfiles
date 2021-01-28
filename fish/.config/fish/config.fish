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
set -x EDITOR nvim
set -x BROWSER firefox
export TERM=xterm-256color
alias tsinit "/home/momofor/scripts/tsinit.fish"
alias deno "/home/momofor/.deno/bin/deno"
alias l "exa-linux-x86_64 -la"  

###############END OF EXPORTS############################################
starship init fish | source

