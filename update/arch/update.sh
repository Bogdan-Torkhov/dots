#!/bin/bash
sudo pacman -Syyu && paru 
curl -fsSL https://get.pulumi.com | sh
brew update
brew upgrade
rustup update
sudo npm update
sudo yarn upgrade
poetry self update
deno upgrade
bun upgrade
