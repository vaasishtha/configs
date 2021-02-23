# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Env
# export TERM="st"
export SHELL="zsh"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# Ccache related
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME/ccache/ccache.config"
export CCACHE_DIR="$XDG_CACHE_HOME/ccache"
export USE_CCACHE=1
export CCACHE_COMPRESS=1

export ATOM_HOME="$XDG_DATA_HOME/atom"
export LESSHISTFILE="-"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat" --preview-window :70%'
export OCTAVE_HISTFILE="$XDG_CACHE_HOME/octave-hsts"
export OCTAVE_SITE_INITFILE="$XDG_CONFIG_HOME/octave/octaverc"
# export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"

[ -d "$XDG_DATA_HOME/bin" ] && export PATH="${PATH}:$XDG_DATA_HOME/bin"
[ -d "$HOME/androidBuilds/platform-tools" ] && export PATH="${PATH}:$HOME/androidBuilds/platform-tools"
[ -d "$HOME/androidBuilds/bin" ] && export PATH="${PATH}:$HOME/androidBuilds/bin"

# [ "$TTY" = "/dev/tty1" ] && {
#	(! pgrep -x Xorg > /dev/null) && exec startx
# }

