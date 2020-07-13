local ZSH_CONF=$HOME/.config/zsh               				# Define the place I store all my zsh config stuff
local ZSH_CACHE=$ZSH_CONF/cache                				# for storing files like history and zcompdump
local LOCAL_ZSHRC=$ZSH_CONF/.zshrc							# Allow the local machine to have its own overriding zshrc if it wants it
local ZSH_COMPDUMP="$ZSH_CONF/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"  #where to store autocomplete data

# PLUGINS
# Add wisely, as too many plugins slow down shell startup.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CONF/git-prompt.sh

# User configuration
export LANG=en_IN.UTF-8
export KEYTIMEOUT=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,bold,underline"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,underline"
# export PATH=$HOME/bin:/usr/local/bin:$PATH

HISTFILE=$ZSH_CONF/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd 
setopt extendedglob 
setopt nomatch 
setopt notify 
setopt appendhistory
setopt prompt_subst
setopt complete_in_word                             # Allow completion from within a word/phrase
setopt always_to_end								# When completing from the middle of a word, move cursor to end of word
setopt menu_complete                                # When using auto-complete, put the first option on the line immediately
setopt complete_aliases								# Turn on completion for aliases as well
setopt list_rows_first								# Cycle through menus horizontally instead of vertically

autoload -Uz compinit                               # Autoload auto completion
compinit -i -d "${ZSH_COMPDUMP}"                    # Init auto completion; tell where to store autocomplete dump
zstyle ':completion:*' menu select					# Have the menu highlight as we cycle through options
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' list-suffixes				# Partial Completion
zstyle ':completion:*' expand prefix suffix


autoload -Uz edit-command-line 
zle -N edit-command-line

autoload -Uz colors && colors

# ALIASES

alias ls="ls -Fh --color=auto --group-directories-first"
alias lsa="ls -a"
alias lo="ls -o"
alias la="ls -ao"
alias l="ls -aoh"
alias grep="grep -n --color=auto"
alias diff="diff --color=auto"
alias mv="mv -i"
alias rm="rm -i"
alias df="df -h"
alias free="free -h"
alias gs="git status"
alias bat="bat -A --color always"
alias ncmpcpp="ncmpcpp -c $XDG_CONFIG_HOME/.ncmpcpp/config"

# Prompt Theming
# Options: ➜ √ λ ✔ ✘ ❯ ❮
# %n=Username, %m=Machinename, %C=Trimmed Dir Name
# %c=DirName, 
# %F{..}=Foreground, %B/b=Bold Start/Stop
# %f=reset_color
# PS1='%B%F{cyan}%c %f%b%F{magenta}$(__git_ps1 " %s ")%f%B%(?:%F{green}:%F{red})➜ %f%b'
PROMPT='%B%F{cyan}%c %f%(?:%F{green}:%F{red})%b❯ %f'
RPROMPT='%F{magenta}$(__git_ps1 "  %s")%f'
# precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# KEY BINDINGS
bindkey "^?" 		backward-delete-char	#[BaskSpace]
bindkey "^[[2;5~" 	overwrite-mode			#[Insert]	
bindkey "^[[H" 		beginning-of-line		#[Home]
bindkey "^[[P" 		delete-char				#[Delete]
bindkey "^[[4~" 	end-of-line				#[End]
bindkey "^[[5~" 	up-line-or-history		#[PageUp]
bindkey "^[[6~" 	down-line-or-history	#[PageDown]
bindkey "^K" 		kill-whole-line         #[Ctrl-K] erase whole line
bindkey "^[[A" 		history-search-backward #start typing + [Up-Arrow] - fuzzy find history forward  
bindkey "^[[B" 		history-search-forward  #start typing + [Down-Arrow] - fuzzy find history backward
bindkey "^[[1;5C" 	forward-word			#[Ctrl-RightArrow] - move forward one word
bindkey "^[[1;5D" 	backward-word	        #[Ctrl-LeftArrow] - move backward one word                    

# MISC

clear && neofetch | lolcat

