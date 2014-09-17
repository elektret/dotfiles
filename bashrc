# .bashrc
#
# Check for an interactive session
# if not running interactively, don't do anything

[[ $- != *i* ]] && return

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# Ugly but unsure what to do in GDM. Help ...
[ -r "${HOME}/.profile" ] && source "${HOME}/.profile"

# Add RVM to PATH for scripting 
export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
