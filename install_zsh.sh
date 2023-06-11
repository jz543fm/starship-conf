#!/usr/bin/env zsh

#Add the init script to your shell's config file:
grep -qxF 'eval "$(starship init zsh)"' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc

#Find where you downloaded starship.toml from this repository

STARSHIP_PATH=$(find $HOME -print | grep -i starship.toml);

#Then move from proper location starship.toml to $HOME/.config/ and reload your terminal with: 
# mv <path_of_custom_starship_toml> ~/.config/starship.toml

mv $STARSHIP_PATH ~/.config/starship.toml

#Reload session

zsh
