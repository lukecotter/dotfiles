#!/usr/bin/env bash

for location in $(find home -name '.*'); do
  file="${location##*/}"
  ln -fs "$PWD/$location" "$HOME/$file"
done