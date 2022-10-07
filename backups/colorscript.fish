set dir_colorscripts "/opt/shell-color-scripts/colorscripts"

complete -c colorscript -n "__fish_use_subcommand" -l list -d "List all color scripts."
complete -c colorscript -n "__fish_use_subcommand" -l random -d "Run a random color script."
set colorscripts (ls $dir_colorscripts)
for colorscript in $colorscripts 
    complete -c colorscript -n "__fish_use_subcommand" -l exec -d "Run a specific color script." -r -f -a $colorscript
end

