
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
	# test -r "~/.dir_colors" && eval (dircolors ~/.dir_colors)
end
#################################END OF AUTOSTART########################
zoxide init fish | source

################START OF EXPORTS##################################
#exports
# colorscript exec random
# set -x BROWSER "qutebrowser"
set -x LIBVA_DRIVER_NAME i965
# set -x LIBVA_DRIVERS_PATH /usr/lib/dri
set -x QT_PLUGIN_PATH /usr/lib/qt/plugins/
set -x QT_QPA_PLATFORM wayland
set -x ANKI_WAYLAND 1
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION "1"
set -x GDK_BACKEND wayland

set -x XDG_SESSION_TYPE wayland
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_STATE_HOME ~/.local/state
set -x XDG_CACHE_HOME ~/.cache
set -x CLUTTER_BACKEND wayland
set -x ECORE_EVAS_ENGINE wayland
set -x ELM_ENGINE wayland
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x NO_AT_BRIDGE 1


set -x MOZ_ENABLE_WAYLAND 1
# set -x WAYLAND_DISPLAY wayland-0
# set -x DISPLAY :0
set -x PATH $HOME/.cargo/bin:$PATH
set -x PATH $HOME/.local/bin:$PATH
set -x PATH $HOME/.other/git/eww/bin:$PATH
set -x PATH $HOME/.other/git/quarto/opt/quarto-1.2.335/bin:$PATH
set -x EDITOR nvim
set -x LD_LIBRARY_PATH /usr/local/lib/
set -x LD_LIBRARY_PATH /usr/local/lib64/:$LD_LIBRARY_PATH
set -x LIBTORCH /home/momofor/.other/git/libtorch
set -x LD_LIBRARY_PATH $LIBTORCH/lib:$LD_LIBRARY_PATH
set -x PIPEWIRE_LATENCY 256/48000
set -x SDL_VIDEODRIVER wayland
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x WX_CONFIG /usr/bin/wx-config-gtk3-3.1
# set -x CC clang
# set -x CXX clang++
set -x LD ld.lld
set -x WLR_DRM_DEVICES /dev/dri/card0
set LC_ALL en_US.UTF-8



set -x LS_COLORS 'no=00:rs=0:fi=00:di=01;34:ln=36:mh=04;36:pi=04;01;36:so=04;33:do=04;01;36:bd=01;33:cd=33:or=31:mi=01;37;41:ex=01;36:su=01;04;37:sg=01;04;37:ca=01;37:tw=01;37;44:ow=01;04;34:st=04;37;44:*.7z=01;32:*.ace=01;32:*.alz=01;32:*.arc=01;32:*.arj=01;32:*.bz=01;32:*.bz2=01;32:*.cab=01;32:*.cpio=01;32:*.deb=01;32:*.dz=01;32:*.ear=01;32:*.gz=01;32:*.jar=01;32:*.lha=01;32:*.lrz=01;32:*.lz=01;32:*.lz4=01;32:*.lzh=01;32:*.lzma=01;32:*.lzo=01;32:*.rar=01;32:*.rpm=01;32:*.rz=01;32:*.sar=01;32:*.t7z=01;32:*.tar=01;32:*.taz=01;32:*.tbz=01;32:*.tbz2=01;32:*.tgz=01;32:*.tlz=01;32:*.txz=01;32:*.tz=01;32:*.tzo=01;32:*.tzst=01;32:*.war=01;32:*.xz=01;32:*.z=01;32:*.Z=01;32:*.zip=01;32:*.zoo=01;32:*.zst=01;32:*.aac=32:*.au=32:*.flac=32:*.m4a=32:*.mid=32:*.midi=32:*.mka=32:*.mp3=32:*.mpa=32:*.mpeg=32:*.mpg=32:*.ogg=32:*.opus=32:*.ra=32:*.wav=32:*.3des=01;35:*.aes=01;35:*.gpg=01;35:*.pgp=01;35:*.doc=32:*.docx=32:*.dot=32:*.odg=32:*.odp=32:*.ods=32:*.odt=32:*.otg=32:*.otp=32:*.ots=32:*.ott=32:*.pdf=32:*.ppt=32:*.pptx=32:*.xls=32:*.xlsx=32:*.app=01;36:*.bat=01;36:*.btm=01;36:*.cmd=01;36:*.com=01;36:*.exe=01;36:*.reg=01;36:*~=02;37:*.bak=02;37:*.BAK=02;37:*.log=02;37:*.log=02;37:*.old=02;37:*.OLD=02;37:*.orig=02;37:*.ORIG=02;37:*.swo=02;37:*.swp=02;37:*.bmp=32:*.cgm=32:*.dl=32:*.dvi=32:*.emf=32:*.eps=32:*.gif=32:*.jpeg=32:*.jpg=32:*.JPG=32:*.mng=32:*.pbm=32:*.pcx=32:*.pgm=32:*.png=32:*.PNG=32:*.ppm=32:*.pps=32:*.ppsx=32:*.ps=32:*.svg=32:*.svgz=32:*.tga=32:*.tif=32:*.tiff=32:*.xbm=32:*.xcf=32:*.xpm=32:*.xwd=32:*.xwd=32:*.yuv=32:*.anx=32:*.asf=32:*.avi=32:*.axv=32:*.flc=32:*.fli=32:*.flv=32:*.gl=32:*.m2v=32:*.m4v=32:*.mkv=32:*.mov=32:*.MOV=32:*.mp4=32:*.mpeg=32:*.mpg=32:*.nuv=32:*.ogm=32:*.ogv=32:*.ogx=32:*.qt=32:*.rm=32:*.rmvb=32:*.swf=32:*.vob=32:*.webm=32:*.wmv=32:';
# set -x http_proxy 192.168.1.9:3128
# set -x https_proxy 192.168.1.9:3128
# set -x ftp_proxy 192.168.1.9:10600

###############END OF EXPORTS############################################


set -x  TERM xterm-256color
alias tsinit "/home/momofor/scripts/tsinit.fish"
alias c "z"
alias deno "/home/momofor/.deno/bin/deno"
alias l "exa-linux-x86_64 -la"  
# alias obsidian "~/Applications/Obsidian-0.10.13_0632d66a95a85ab51525bd7325b85c39.AppImage"
alias runescapeu "flatpak run com.jagex.RuneScape "
alias devdocs "~/scripts/devdocs-run.sh"
alias gp "git push"
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
alias naw="nvim ~/.config/awesome/rc.lua"
alias t=tmux
alias watchu="mpv --hwdec=auto --ytdl-format='(best[height<=720]/bestvideo+bestaudio)'"
alias U="sudo apt update && sudo apt upgrade"
alias ll="exa -l"
alias la="exa -la"
alias sz="source ~/.zshrc"
alias ft="freetube --use-gl=desktop --enable-features=VaapiVideoDecoder"
alias C="sudo apt autoremove && sudo apt autoclean"
alias upd="sudo pacman -Sy && sudo powerpill -Su && paru -Su"
alias spo="LD_PRELOAD=/usr/lib/spotify-adblock.so spotify"
alias pkgcount="paru -Qa | wc -l"
alias cr="colorscript random"
alias recordu="/usr/lib/xdg-desktop-portal -r & /usr/lib/xdg-desktop-portal-wlr"
alias night="gammastep -O 5000K"
# alias neovide ~/.other/git-stuff/neovide/target/release/neovide
alias l="exa"
alias ls="ls --hyperlink=auto --color=auto"
alias rust-analyzer="rustup run nightly rust-analyzer"
alias pf="pfetch"
alias bt="btm"
alias ee="easyeffects"
alias nf="nvim ~/.config/fish/config.fish"
alias gc="git commit -m "
alias g=git
alias ga="git add"
alias mirror="wget -mkxKE"
alias ob="obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias tachi="docker run -p 127.0.0.1:4567:4567 -v /home/momofor/.other/tachidesk-data:/./home/suwayomi/.local/share/Tachidesk ghcr.io/suwayomi/tachidesk"
alias record="wf-recorder -c h264_vaapi -d /dev/dri/renderD128 --audio -f"
alias init-julia="julia --project=$PWD -e 'using Pkg; Pkg.instantiate()'"
alias salawat "~/salawat.fish"
alias rm "rm -i"
alias zotero "GDK_BACKEND=x11  zotero"
alias tao "zathura ~/books/Tao-Te-Ching-Annotated-And-Explained-Derek-Lin.pdf"

function set_temp
	gawk -v temp=$argv -i inplace '{gsub(/temperature\s?+=[0-9]?+\.?[0-9]?+/, "temperature=" temp)}; {print}' .config/hypr/shaders/blue_light.glsl
end

# starship init fish | source
# source (/usr/bin/starship init fish --print-full-init | psub)
starship init fish | source
