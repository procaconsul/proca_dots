################################
#                              #
#        Proca_dots-rc         #
#                              #
# ---------------------------- #
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
export PATH
export JAVA_HOME=`/usr/libexec/java_home`

if command -v pyenv 1 > /dev/null 2>&1
then
  eval "$(pyenv init -)"
fi
