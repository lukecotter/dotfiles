#!/usr/bin/env bash

# Set permissions
# echo "Setting npm permissions"
# sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading npm clis"
npm i -g sfdx-cli
npm i -g local-web-server
npm i -g vsce