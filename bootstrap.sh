#!/bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH
ln -sfn ~/shopify-dotfiles/zsh ~/.zsh
ln -sf ~/shopify-dotfiles/zsh/zshrc ~/.zshrc

source ~/.zshrc
