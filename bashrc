# .bashrc
#
# Check for an interactive session
# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# Ugly but unsure what to do in GDM. Help ...
[ -r "${HOME}/.profile" ] && source "${HOME}/.profile"
