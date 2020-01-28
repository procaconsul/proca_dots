################################
#                              #
#        Proca_dots-rc         #
#                              #
# ---------------------------- #
# MacOS-specific configuration #
################################

PATH=""
PATH="$PATH:/usr/local/opt/python@3.8/bin"
PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$PATH:/Users/$USER/.sdkman/candidates/scala/current/bin"
PATH="$PATH:/Library/TeX/texbin:/opt/X11/bin:/Users/$USER/.fzf/bin"
PATH="$PATH:$HOME/Library/Python/2.7/bin"
export PATH

export JAVA_HOME=`/usr/libexec/java_home`


# SDK setup: keep at the bottom of the file #####################
export SDKMAN_DIR="/Users/Consul/.sdkman"
[[ -s "/Users/Consul/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/Consul/.sdkman/bin/sdkman-init.sh"

