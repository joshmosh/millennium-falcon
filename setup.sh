# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install homebrew recipes
recipes=(
  curl
  mongodb
  postgresql
  mysql
  redis
  git
)

echo "Installing recipes..."
brew install ${recipes[@]}

# Cleanup!
brew cleanup

# Install homebrew cask
# Make installing native apps
# wayyyyyyy easier
brew install caskroom/cask/brew-cask

# Install apps
apps=(
  1password
  dropbox
  google-chrome
  google-drive
  slack
  transmit
  firefox
  spotify
  atom
  flux
  mailbox
  sketch
  vlc
  cloudup
  skype
  transmission
  cyberduck
  the-unarchiver
  keepingyouawake
  mou
  sequel-pro
  pgadmin3
  sourcetree
  private-internet-access
  rdm
  github
)

echo "Installing apps..."
brew cask install ${apps[@]}
