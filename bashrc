# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command not Found?
[ -r /etc/profile.d/cnf.sh  ] && . /etc/profile.d/cnf.sh

# Auto cd when just a patch
shopt -s autocd

# Check for Windows resize
shopt -s checkwinsize

PATH=$PATH:/home/snx/.gem/ruby/2.2.0/bin
export PATH

# Aliases
alias ls='ls --color=auto'
alias fuck='sudo $(history -p \!\!)'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -la'
alias hla='vim ~/dotfiles/herbstluftwm/autostart'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

PS1='[\u@\h \W]\$ '

# Python :D
venv() {
    local activate=~/.python/$1/bin/activate
    if [ -e "$activate" ] ; then
        source "$activate"
    else
        echo "Error: Not found: $activate"
    fi
}
venv27() { venv 27 ; }
