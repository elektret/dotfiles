# .bash_profile
# Run in a login shell
umask u=rwx,g=,o=

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
for file in ~/.bash/{aliases,variables,functions}.sh; do
  [ -r "$file" ] && source "$file"
done
