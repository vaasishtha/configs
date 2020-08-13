# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# Env
export TERM="st"
export SHELL="zsh"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# Ccache related
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME/ccache/ccache.config"
export CCACHE_DIR="$XDG_CACHE_HOME/ccache"
export USE_CCACHE=1
export CCACHE_COMPRESS=1

export LESSHISTFILE="-"
export ATOM_HOME="$XDG_DATA_HOME/atom"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat" --preview-window :70%'

export PATH="${PATH}:$HOME/bin"
[ -d "$HOME/androidBuilds/platfor-tools" ] && export PATH="${PATH}:$HOME/androidBuilds/platform-tools"
[ -d "$HOME/androidBuilds/bin" ] && export PATH="${PATH}:$HOME/androidBuilds/bin"

# [ "$TTY" = "/dev/tty1" ] && {
#	(! pgrep -x Xorg > /dev/null) && exec startx
# }

