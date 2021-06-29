#!/usr/bin/env bash

# Set permissions
# echo "Setting npm permissions"
# sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
LATESTNODE=$(fnm ls-remote | cut -d "." -f1 | cut -d "v" -f2 | tail -1)
echo "Installing node v$LATESTNODE + LTS"
fnm install --lts
fnm install $LATESTNODE
fnm default $LATESTNODE

echo "Downloading npm clis"
npm i -g npm
npm i -g sfdx-cli
npm i -g local-web-server
npm i -g vsce