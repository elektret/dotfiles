# .bashrc
# Check for an interactive session
# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
# Ugly but unsure what to do with GDM. Help ...
[ -f "$HOME/.profile" ] && source "$HOME/.profile"
