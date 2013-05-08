# .profile
# Run in a login shell
umask u=rwx,g=,o=

# User specific environment and startup programs
for file in ~/.bash/{aliases,variables,functions}.sh; do
  [ -r "$file" ] && source "$file"
done
