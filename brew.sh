#!/usr/bin/env bash

# xcode-select -install
# Install command-line tools using Homebrew.

# Install Homebrew (if not installed)
echo "Installing Homebrew."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# # Install a modern version of Bash.
# brew install bash
# brew install bash-completion2

# # Switch to using brew-installed bash as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install `wget` with IRI support.
brew install wget --with-iri # Internet file retriever

# Install GnuPG to enable PGP-signing commits.
# brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
# gnu grep
brew install grep
# brew install openssh
# brew install screen
# brew install php
# brew install gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install ant
brew install git
brew install git-lfs
# brew install gs
# brew install imagemagick --with-webp
brew install p7zip
brew install pigz
# brew install pv
# brew install rename
# brew install rlwraps
# brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli
brew install node
brew install fnm
brew install adoptopenjdk
brew install adoptopenjdk8
brew install adoptopenjdk11
brew install adoptopenjdk14
# brew install simplehttp2server
brew install pmd
brew install thefuck
brew install the_silver_searcher
brew install zsh
brew install mas
brew install jq

## Apps I use
brew tap Homebrew/cask-versions

# brew cask install 1password
brew cask install lastpass
brew cask install alfred
# brew cask install beamer # Stream to apple tv + chromecast
# brew cask install dash
# brew cask install dropbox
brew cask install microsoft-edge-dev # Weekly
brew cask install firefox-nightly # Nightly
brew cask install firefox-developer-edition # dev edition
# brew cask install google-chrome # Chrome
brew cask install google-chrome-dev # Chrome dev
brew cask install google-chrome-canary # Chrome Canary
# brew cask install grammarly
brew cask install iterm2 # replace terminal 
# brew cask install kap # Screen capture - https://getkap.co/
# brew cask install keycastr # open-source keystroke visualizer - https://github.com/keycastr/keycastr
# brew cask install mongodb-compass
# brew cask install notion
# brew cask install sketch # ui design - https://www.sketch.com/
# brew cask install skitch
# brew cask install skype
brew cask install slack
brew cask install spotify
# brew cask install textexpander
# brew cask install tower
# brew cask install wechat
# hide menu bar icons (similar to bartender and vanilla) - https://github.com/Mortennn/Dozer
brew cask install dozer
brew cask install rectangle 
brew cask install Amphetamine # keep mac awake - https://apps.apple.com/app/amphetamine/id937984704
brew cask install flux # Better nightshift - https://justgetflux.com/
brew cask install diffmerge # p4v meld difftool - kdiff3, p4merge, meld
# brew cask install trello # 
# brew cask install twitter #
brew cask install vlc #

brew cask install visual-studio-code-insiders \
intellij-idea-ce \
fork \

brew cask install font-firacode-nerd-font
brew cask install java

brew cask install \
qlcolorcode \ # Preview source code files with syntax highlighting
qlstephen \ # Preview plain text files without a file extension. Example: README, CHANGELOG, etc.
qlmarkdown \ # Preview Markdown files
quicklook-json \ # Preview JSON files
quicklook-csv \ # Preview CSV files
qlimagesize \ # Display image size and resolution
suspicious-package \ # Preview the contents of a standard Apple installer package
qlvideo \ # Preview most types of video files, as well as their thumbnails, cover art and metadata
betterzipql \ # Preview archives
webpquicklook \ # Preview WebP images
# provisionql \ # Preview iOS / OS X app and provision information
# quicklookap #  Preview Android APK files
# quicklookase \ # Preview ASE files (Adobe Swatch Exchange)

# Remove outdated versions from the cellar.
brew cleanup