# Find out the top 10 memory consuming process
function top10_mem {
  ps -auxf | sort -nr -k 4 | head -10
}

# Find out top 10 cpu consuming process
function top10_cpu {
  ps -auxf | sort -nr -k 3 | head -10
}

# Make files readable and directories executable
function chmod_fs {
  find . -type f -exec chmod a-x '{}' \;
  find . -exec chmod go-rwx '{}' \;
  chown -R `id -un`:`id -gn` .
}

function copy_dotfiles {
  for object in `find ~/repos/dotfiles -maxdepth 1 -name \[a-z]*`; do
    [ -r ~/.`basename $object` ] && rm -rf ~/.`basename $object`
    cp -rva $object ~/.`basename $object` && [ -f $object ] && chmod a-x ~/.`basename $object`
    chmod go-rwx ~/.`basename $object`
  done
}

function copy_profile {
  for object in `find ~/profile -maxdepth 1 -name \[a-z]*`; do
    [ -r ~/.`basename $object` ] && rm -rf ~/.`basename $object`
    cp -rva $object ~/.`basename $object` && [ -f $object ] && chmod a-x ~/.`basename $object`
    chmod go-rwx ~/.`basename $object`
  done
}

# Build mount structure
function mkdir_dev {
  for i in a b c d e f; do
    for j in 1 2 3 4; do
      mkdir sd${i}${j}
    done
  done
}

# Find expression in Ruby files
function rgrep {
  find -L . -type f -name \*.rb -exec grep -n -i -H --color "$1" {} \;
}

function qrand {
  echo `cat /dev/urandom | base91 | head -1`
}
