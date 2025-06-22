# Development Setup

Setup with `setup.sh`

## Tools

- Terminal Ghostty with Tmux
- Neovim with Lazyvim as IDE
- Starship for shell prompt
- Fzb for reverse search & file search
- Rg - riggrep
- Htop - for process management
- Nerd fonts (Jetbrains mono)

  ## LazyVim setup

Additional requirements: node, gcc, go, fd, rg, fzf installed

1. Cleanup files, also check which kde, for office .local.kde5

```bash
rm ~/.config/nvim
rm -rf ~/.local/share/nvim/ ~/.local/state/nvim/ ~/.cache/nvim/

rm -f ~/.config.kde5/nvim
rm -rf ~/.local.kde5/share/nvim/ ~/.local.kde5/state/nvim/ ~/.cache.kde5/nvim/
```

1. Install necessary [software](https://www.lazyvim.org/) & install LazyVim
   in `~/.config/kde<num>` if necessary

## Remote ssh

Setup Remote SSH: Create .ssh folder & generate a compatible keygen.
Add private key as Identity file. On Linux accepting connections add
public key in authorized_keys file.

```bash
# .ssh/authorized_keys, you can keep records of ssh
Host <alias>
  User <user here
  HostName <FQDN here>
  # For ghossty xterm-ghostty is not known by many systems
  SetEnv TERM=xterm-256color
  IdentityFile <private key path>
```

# TODO fixes

Items to fix

- Try installing default plugins so that there is less config

## FAQ

- Ghostty TERM env issues. Provides ghostty features.
  `export TERM=xterm-256color <- TERM=xterm`
