# #!/usr/bin/env bash

# xcode-select -install
# Install command-line tools using Homebrew.

# Install Homebrew (if not installed)
echo "Installing Homebrew."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

# Install `wget` 
brew install wget # Internet file retriever

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
# brew install ack
# brew install exiv2
brew install ant
brew install git
brew install git-lfs
# brew install gs
# brew install imagemagick --with-webp
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwraps
# brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli
# brew install node
brew install fnm

brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk
brew install adoptopenjdk/openjdk/adoptopenjdk8
brew install adoptopenjdk11
brew install adoptopenjdk14
# brew install simplehttp2server
brew install pmd
# brew install thefuck
brew install the_silver_searcher
brew install zsh
brew install jq

## Apps I use
# brew tap Homebrew/cask-versions

# brew install 1password
brew install lastpass
brew install alfred
# brew install beamer # Stream to apple tv + chromecast
# brew install dash
# brew install dropbox
brew install microsoft-edge-dev # Weekly
brew install firefox-nightly # Nightly
brew install firefox-developer-edition # dev edition
# brew install google-chrome # Chrome
brew install google-chrome-dev # Chrome dev
brew install google-chrome-canary # Chrome Canary
# brew install grammarly
brew install iterm2 # replace terminal 
# brew install kap # Screen capture - https://getkap.co/
# brew install keycastr # open-source keystroke visualizer - https://github.com/keycastr/keycastr
# brew install mongodb-compass
# brew install notion
# brew install sketch # ui design - https://www.sketch.com/
# brew install skitch
# brew install skype
brew install slack
brew install spotify
# brew install textexpander
# brew install tower
# brew install wechat
# hide menu bar icons (similar to bartender and vanilla) - https://github.com/Mortennn/Dozer
brew install dozer
brew install rectangle 
brew install flux # Better nightshift - https://justgetflux.com/
brew install diffmerge # p4v meld difftool - kdiff3, p4merge, meld
# brew install trello # 
# brew install twitter #
brew install vlc #

brew install visual-studio-code-insiders \
intellij-idea-ce \
fork \

brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
# brew install java

brew install qlstephen \
qlmarkdown \
quicklook-json \
quicklook-csv \
qlimagesize \
suspicious-package \
qlvideo \
betterzip \

brew install mas # to install apps from mac app store from cli.
mas install 937984704 # (Amphetamine) keep mac awake - https://apps.apple.com/app/amphetamine/id937984704

# Remove outdated versions from the cellar.
brew cleanup