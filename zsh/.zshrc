# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

local ZSH_CONF=$HOME/.config/zsh               				# Define the place I store all my zsh config stuff
local ZSH_CACHE=$ZSH_CONF/cache                				# for storing files like history and zcompdump
local LOCAL_ZSHRC=$ZSH_CONF/.zshrc	     				# Allow the local machine to have its own overriding zshrc if it wants it
local ZSH_COMPDUMP="$ZSH_CONF/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"  #where to store autocomplete data

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# PLUGINS TO LOAD
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CONF/git-prompt.sh

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,bold,underline"

# User configuration

export LANG=en_IN.UTF-8
export KEYTIMEOUT=1

HISTFILE=$ZSH_CONF/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify appendhistory

autoload -Uz compinit                                    # Autoload auto completion
compinit -i -d "${ZSH_COMPDUMP}"                         # Init auto completion; tell where to store autocomplete dump
zstyle ':completion:*' menu select                       # Have the menu highlight as we cycle through options
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'      # Case-insensitive (uppercase from lowercase) completion

autoload -Uz edit-command-line 
zle -N edit-command-line

#autoload -Uz colors && colors

setopt prompt_subst
setopt COMPLETE_IN_WORD                                 # Allow completion from within a word/phrase
setopt ALWAYS_TO_END                                    # When completing from the middle of a word, move cursor to end of word
setopt MENU_COMPLETE                                    # When using auto-complete, put the first option on the line immediately
setopt COMPLETE_ALIASES                                 # Turn on completion for aliases as well
setopt LIST_ROWS_FIRST                                  # Cycle through menus horizontally instead of vertically

# ALIASES

alias ls="ls -h --color=auto"
alias lsa="ls -a"
alias ll="ls -l"
alias la="ls -la"
alias l="ls -lah"
alias grep="grep -n --color=auto"
alias diff="diff --color=auto"
alias mv="mv -i"
alias rm="rm -i"
alias gs="git status"

# Prompt Theming
# Options: ➜  √ λ
# %n=Username, %m=Machinename, %C=Trimmed Dir Name
# %c=DirName, 
# %F{..}=Foreground, %B/b=Bold Start/Stop
# %f=reset_color
PS1='%(?:%B%F{green}➜ :%B%F{red}➜ )%f %F{cyan}%c %f%b ' #$(__git_ps1 "(%s)")'
#PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
#precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# KEY BINDINGS
bindkey "^?" 		backward-delete-char	#[BaskSpace]
bindkey "^[[2;5~" 	overwrite-mode		#[Insert]	
bindkey "^[[H" 		beginning-of-line  	#[Home]
bindkey "^[[P" 		delete-char		#[Delete]
bindkey "^[[4~" 	end-of-line		#[End]
bindkey "^[[5~" 	up-line-or-history 	#[PageUp]
bindkey "^[[6~" 	down-line-or-history	#[PageDown]
bindkey "^K" 		kill-whole-line         #[Ctrl-K] erase whole line
bindkey "^[[A" 		history-search-backward #start typing + [Up-Arrow] - fuzzy find history forward  
bindkey "^[[B" 		history-search-forward  #start typing + [Down-Arrow] - fuzzy find history backward
bindkey "^[[1;5C" 	forward-word    	#[Ctrl-RightArrow] - move forward one word
bindkey "^[[1;5D" 	backward-word	        #[Ctrl-LeftArrow] - move backward one word                    

# MISC

clear && neofetch | lolcat
