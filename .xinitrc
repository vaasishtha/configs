#!/usr/bin/env sh

export PATH="${PATH}:$HOME/bin"
export SHELL="/usr/bin/zsh"
export EDITOR="/usr/bin/vim"
export TERM="st"
export BROWSER="/usr/bin/firefox"
export READER="/usr/bin/zathura"
# export FILE="/usr/bin/nemo"
export FILE="/usr/bin/ranger"

# Configs
export ZDOTDIR="$HOME/.config/zsh/"
export LESSHISTFILE="-"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat" --preview-window :70%'

# CCACHE vars
export USE_CCACHE=1
export CCACHE_COMPRESS=1

systemctl --user import-environment DISPLAY &

[ -d "$HOME/platform-tools" ] && PATH="${PATH}:$HOME/platform-tools" &

[ -d "$HOME/androidBuilds/bin" ] && PATH="${PATH}:$HOME/androidBuilds/bin" &

/usr/bin/feh --no-fehbg --bg-scale $HOME/Media/Pictures/Walls/netero.jpg &

/usr/bin/sxhkd &

/usr/bin/dunst &

[ ! -s ~/.config/mpd/pid ] && /usr/bin/mpd & 

/usr/bin/picom -b &

$HOME/bin/Status&

while :; do
	ssh-agent dwm
done
