# Development Setup

Use Linux for development. Execute `setup.sh`

Use termianl Ghostty with tmux & nvim.

## Tools to use daily on linux

- nvim instead of vim with lazyvim
- ghostty for terminal
- starship for shell prompt
- fzb for reverse search & file search
  ctrl + t (file search) ctrl + z (command search)
- tmux - for terminal multiplexer
- rg - riggrep
- htop - for process management
- nerd fonts (jetbrains mono)

```bash
#!/bin/sh
set -euxo pipefail
# Script to create a binary and put it in home, Required to install from source
cd /tmp
git clone https://g.blicky.net/ncdu.git/
cd ncdu
git checkout v1.19
autoreconf --install
./configure # ensures that all deps are met, creates makefile
make V=1 VERBOSE=1
cp --archive --verbose ncdu ~/rhe19/bin/
```

## Lazyvim setup

Additional requirements: node, gcc, go, fd, rg, fzf installed

1. Cleanup files, also check which kde, for office .local.kde5

  ```bash
  rm -rf ~/.config/nvim/ ~/.local/share/nvim/ ~/.local/state/nvim/ ~/.cache/nvim/
  rm -rf ~/.config.kde5/nvim/ ~/.local.kde5/share/nvim/ ~/.local.kde5/state/nvim/ ~/.cache.kde5/nvim/
  ```

2. Install necessary [software](https://www.lazyvim.org/) & install lazyvim in `~/.config/kde<num>` if necessary

## FAQ

- Ghostty TERM env issues. Provides ghostty features.
  `export TERM=xterm-256color <- TERM=xterm`
