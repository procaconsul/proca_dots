echo "    **************************************"
echo "  ****   Proca-dotfiles: Installation   ****"
echo "**********************************************"

DOTFILES_DIR="$HOME/proca_dots"
CONF_FILES="runcom"

echo "[INFO]  Creating symlinks in home directory for *rc files..."
for CONF in $CONF_FILES; do
  for DOTFILE in $(find $DOTFILES_DIR/$CONF -type f -name ".*"); do
    
    FILE_NAME=$(basename $DOTFILE)
    
    # Create backups
    if [ -f ~/$FILE_NAME ]; then
      echo "[INFO]  Creating backup for existing $FILE_NAME file..."
      cat ~/$FILE_NAME > ~/$FILE_NAME.bak
    fi

    # Create symlink 
    if [ ! -L "$DOTFILE" ]; then
      ln -sfv "$DOTFILE" ~
    fi

  done
done

if [ ! -L "$DOTFILES_DIR" ]; then
  echo "[INFO] Symlinking the dotfiles directory from home directory..."
  ln -sfv "$DOTFILES_DIR" ~
fi

if [ ! -f ~/.vim/colors/solarized.vim ]; then
  echo "Installing vim-solarized..."
  git clone https://github.com/altercation/vim-colors-solarized.git /tmp/vim-colors-solarized
  mkdir -p ~/.vim/colors
  mv /tmp/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
fi

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Shall I install vim-plug for plugin management? [y/n] "
  read res
  if [[ "$res" = 'y' ]]; then 
    echo "[INFO]  Installing vim-plug for plugin management."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +:qa
  fi
else
  vim +PlugInstall +:qa
  vim +PlugUpgrade +:qa
  vim +PlugClean! +:qa
fi

if [ ! -d ~/.oh-my-zsh ]; then
  echo "[INFO] Installing Oh-My-ZSH..."
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  echo "[INFO] Installing Oh-My-ZSH custom plugins..."
  source plugins/oh-my-zsh_plugins.sh
fi

# External packages ###########################################################

if [[ $(uname) = 'Darwin' ]]; then
  if [[ ! $(whence brew) ]]; then
    echo "[INFO] Installing brew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
  source $DOTFILES_DIR/plugins/brew_install.sh
fi

echo "[INFO]  All done."
exit $?
