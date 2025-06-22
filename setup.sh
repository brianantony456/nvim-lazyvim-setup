#!/bin/bash

set -eoxu pipefail

CURRENT_DIR="$(pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}" # Use XDG_CONFIG_HOME if set, else ~/.config

# Cleanup old symlinks
rm -rf "$HOME/.tmux.conf" "$CONFIG_DIR/nvim" "$CONFIG_DIR/ghostty"

# Symlink for .tmux.conf
ln -s "$CURRENT_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Symlink for Neovim config directory
ln -s "$CURRENT_DIR/nvim" "$CONFIG_DIR/nvim"

# Setup ghostty config
ln -s "$CURRENT_DIR/ghostty" "$CONFIG_DIR/ghostty"

# Setup git config
git config --global core.editor "nvim"

# Source tmux file
tmux source ~/.tmux.conf

echo "DONE: Manual setup for .bashrc, nvim plugins & extras, tmux setup(check .tmux.conf)"
