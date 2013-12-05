# Find out the top 10 memory consuming process
function top10_mem {
  ps aux | sort -nr -k 4 | head -10 | cut -c -100
}

# Find out top 10 cpu consuming process
function top10_cpu {
  ps aux | sort -nr -k 3 | head -10 | cut -c -100
}

# Make files readable and directories executable
function chmod_fs {
  find . -type f -exec chmod a-x '{}' \;
  find . -exec chmod go-rwx '{}' \;
  chown -R `id -un`:`id -gn` .
}

# Prepare files for archiving
function chmod_archive {
  chmod_fs
  find . -type f -exec chmod a-w '{}' \;
}

# Copy dotfiles
function copy_dotfiles {
  for object in `find ~/repos/dotfiles -maxdepth 1 -name \[a-z]*`
  do
    [ -r ~/.`basename $object` ] && rm -rf ~/.`basename $object`
    cp -rva $object ~/.`basename $object` && [ -f $object ] && chmod a-x ~/.`basename $object`
    chmod go-rwx ~/.`basename $object`
  done
}

# Build mount structure
function mkdir_dev {
  for i in {a..f}
  do
    mkdir sd$i{1..4}
  done
}

# Find expression in Ruby files
function rgrep {
  find -L . -type f -name '*.rb' -exec grep -n -i -H --color "${1}" {} \;
}

function qrand {
  which base91 &> /dev/null && base="base91" || base="base64"
  echo `cat /dev/urandom | $base | head -1`
}
