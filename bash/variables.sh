export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM=rxvt-unicode
export EDITOR=vim
export RUBY_VERSION=`ruby --version | sed 's/ruby \([0-9]*\.[0-9]*\).*/\1/'`
export GEM_HOME=$HOME/gems/$RUBY_VERSION
export NPM_HOME=$HOME/npm
export PATH=$GEM_HOME/bin:$NPM_HOME/bin:$HOME/.local/bin:$HOME/bin:$PATH
