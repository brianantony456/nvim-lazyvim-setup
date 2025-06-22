#!/bin/bash

set -eoxu pipefail

CURRENT_DIR="$(pwd)"

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}" # Use XDG_CONFIG_HOME if set, else ~/.config

# ~ in office is on nfs and slow hence create symlink
if [ -n "${XDG_CONFIG_HOME:+x}" ]; then
  CONFIG_LINK_ROOT=/workspaces/${HOSTNAME}/nvim-config
  CONFIG_DATA_SHARE=~/.local.kde5/share/nvim
  CONFIG_DATA_STATE=~/.local.kde5/state/nvim
  CONFIG_LINK_CACHE=~/.cache.kde5/nvim

  rm -rf $CONFIG_LINK_ROOT $CONFIG_DATA_SHARE $CONFIG_DATA_STATE $CONFIG_LINK_CACHE
  mkdir -p $CONFIG_LINK_ROOT $CONFIG_LINK_ROOT/nvim-share $CONFIG_LINK_ROOT/nvim-state $CONFIG_LINK_ROOT/nvim-cache

  ln -s ${CONFIG_LINK_ROOT}/nvim-share ${CONFIG_DATA_SHARE}
  ln -s ${CONFIG_LINK_ROOT}/nvim-state ${CONFIG_DATA_STATE}
  ln -s ${CONFIG_LINK_ROOT}/nvim-cache ${CONFIG_LINK_CACHE}
fi

# Cleanup old symlinks
rm -f "$HOME/.tmux.conf" "$CONFIG_DIR/nvim" "$CONFIG_DIR/ghostty"

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
