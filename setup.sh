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
  git
  mongodb
  mysql
  postgresql
  redis
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
  atom
  beamer
  cloud
  cyberduck
  dropbox
  firefox
  flux
  github-desktop
  google-chrome
  google-drive
  gpgtools
  keepingyouawake
  macvim
  mailbox
  mou
  paw
  pgadmin3
  private-internet-access
  rdm
  screenhero
  sequel-pro
  sketch
  skype
  slack
  sourcetree
  spotify
  the-unarchiver
  tower
  transmission
  transmit
  vlc
)

echo "Installing apps..."
brew cask install ${apps[@]}
