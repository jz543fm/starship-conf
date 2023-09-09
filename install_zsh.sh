#!/usr/bin/env zsh

#Install Starship - MacOS
brew install starship

#Default config dir for starship ~/.config
config_dir="$HOME/.config"

if [ ! -d "$config_dir" ]; then
  mkdir -p "$config_dir"
  echo "Directory $config_dir created."
else
  echo "Directory $config_dir already exists."
fi

#Add the init script to your shell's config file:
grep -qxF 'eval "$(starship init zsh)"' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc

#Find where you downloaded starship.toml from this repository
STARSHIP_PATH=$(find / -print | grep -i starship.toml);

#Then move from proper location starship.toml to $HOME/.config/ and reload your terminal with: 
# mv <path_of_custom_starship_toml> ~/.config/starship.toml
mv "$STARSHIP_PATH" "$HOME/.config/starship.toml"

#Reload session
zsh