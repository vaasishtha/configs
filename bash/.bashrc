#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set HISTFILE="$XDG_CONFIG_HOME/bash/.bash_history"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
