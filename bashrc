#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:/home/snx/.gem/ruby/2.2.0/bin
export PATH

# Aliases
alias ls='ls --color=auto'
alias fuck='sudo $(history -p \!\!)'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -la'

PS1='[\u@\h \W]\$ '
