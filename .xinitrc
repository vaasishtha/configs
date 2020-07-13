#!/usr/bin/env sh

export PATH="${PATH}:$HOME/bin"
export SHELL="zsh"
export EDITOR="vim"
export TERM="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"
# export FILE="nemo"

# Configs

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export WEECHAT_HOME="$XDG_CONFIG_HOME/.weechat"
export LESSHISTFILE="-"
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat" --preview-window :70%'

systemctl --user import-environment DISPLAY &

[ -d "$HOME/platform-tools" ] && export PATH="${PATH}:$HOME/platform-tools" &
[ -d "$HOME/androidBuilds/bin" ] && export PATH="${PATH}:$HOME/androidBuilds/bin" &
[ -e "$HOME/Library/Pictures/wall" ] && /usr/bin/feh --no-fehbg --bg-scale "$HOME/Library/Pictures/wall" &

dunst &

pgrep mpd > /dev/null || mpd & 

picom -b &

$HOME/bin/weather &

$HOME/bin/Status &

while :; do
	ssh-agent dwm
done
