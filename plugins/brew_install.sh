brew update
brew upgrade

# Look for Brewfile and install everything
brew bundle --file=~/proca_dots/plugins/Brewfile

# Remove outdated formulae from the cellar
brew cleanup

exit $?

