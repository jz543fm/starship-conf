#!/usr/bin/env bash

#Install starship 
cd $HOME; curl -sS https://starship.rs/install.sh | sh
#for MacOS ->  brew install starship

#Add the init script to your shell's config file:
grep -qxF 'eval "$(starship init bash)"' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
#for ZSH lovers -> grep -qxF 'eval "$(starship init bash)"' ~/.zshrc || echo 'eval "$(starship init bash)"' >> ~/.zshrc

#Find where you downloaded starship.toml from this repository
find $HOME -print | grep -i starship.toml

#Then move from proper location starship.toml to $HOME/.config/ and reload your terminal with: 
# $bash or $zsh commands
