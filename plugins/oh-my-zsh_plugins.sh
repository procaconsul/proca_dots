####################################################
# Custom Plugins for Oh-My-ZSH
####################################################

OMZ_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git \
  $OMZ_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  $OMZ_CUSTOM/themes/powerlevel10k

