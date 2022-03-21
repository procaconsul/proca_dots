################################
# MacOS-specific configuration #
################################

PATH=""
PATH="$PATH:/usr/local/opt/python@3.8/bin"
PATH="$PATH:/usr/local/Cellar/node/12.12.0/bin"
PATH="$PATH:/usr/local/opt/ruby/bin"
PATH="$PATH:/usr/local/lib/ruby/gems/2.6.0/bin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/sbin"
PATH="$PATH:/Library/TeX/texbin"
PATH="$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH"
export PATH

export JAVA_HOME=$(whence java)
