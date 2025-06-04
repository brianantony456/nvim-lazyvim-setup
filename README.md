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

## Build from Source

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

1. Install necessary [software](https://www.lazyvim.org/) & install lazyvim
   in `~/.config/kde<num>` if necessary

## Shortcuts & keybindings

### General Keywords

```bash
Ctrl+Shift+c v      # Ghosty terminal copy & paste, different due to conflicts

## Terminal & normal editor commands
Ctrl + a|e          # ONLY TERM: Go to start or end of line
Ctrl + arrows       # Jump workds
Ctrl + Home|End     # First line or last line

## Fzf
ctrl + r|t            # command search | search files
<cmd> **              # Eg: pgrep ** provides the list of commands
```

### Tmux commands

```bash
tmux | tmux attach # create a new session or attach to existing
<leader> c|1|2|3|n|p   # Create a new window, go to window number or next or previous window
<leader> | -           # Cozfigured: Create new panes horizontally or vertically
<leader> hjkl          # Configured: switch between panes
<leader> Arrows        # Configured: change size of panes
<leader> s             # Change a tmux session
<leader> d             # Detach from window
# Enter commands, use tab to auto suggest
<leader> : rename-window|rename-window|kill-* <name>
# Copy paste: can use v|V y as vim keybindings are enabled
<leader> [ v (visual select) y (yank) ] Enter
=                      # Get from buffer
```

### Neovim with lazyvim

```bash
Esc               # Return to normal mode
i                 # Insert mode
<num>hjkl|:<line> # navigate to line
^$                # Go to start or end of line

# File management
:w filename     # Write to file or current contents to a new file
:w|wq|q|q!|qa   # Write, write quit, quit, quit without saving, quit all

# Copy paste commands
v|V|y|p    # Visual select char/line by line, yank selected, paste
dd|x       # cut line or delete character (also copies to buffer)
:reg       # to see register
"<reg no>p # Paste from register"
u|Ctrl+r   # Undo or redo a change

# Search & Replace
/<patt>\c    # Search forward for a pattern, \c case insensitive
  ?|n|N      # Search backward for a pattern, same direction & opposite direction
:%s/pattern/replacement/gci   # Replace all: c means choose, i - insensitive
:s/pattern/replacement/gci    # Replace selected

# :LazyExtras - contains precoded packages (preconfigured)
# :Mason - install plugins - needs configuration (:MasonInstall :MasonUninstall)
# :LazyHealth - check health of plugins
### Nvim Keys: Navigation, Resize, Move, Find etc
C-<hjkl>    # Move in between windows
C-[arrows]  # Resize current pane
S-<jk>      # Move between tabs in current window
<leader>-f  # Find files, terminal, explorer, all buffers
<leader>-g  # Git and lazygit
<leader>-e  # Explorer: a (add f/d), d (delete), h (minimize), H (show hidden)
<leader>-s  # Search: g -> grep all, r -> replace all
<leader>-b  # Buffer (tab): b - pre vious, <num> - nth buffer etc
<leader>-c  # For code related & mason (lsp, formatter, linter)
<leader>-p  # Custom: get path keybindings
<leader>-d  # Debugging: set breakpoint, run etc
## Editing
<num>gcc|gc # comment|uncomment out given no of lines
S->>        # Forward or backward indent with <<

# diff files
nvim -d file1 file2 ...
:diff<this|off|>    # open buffers and diff them

:filetype python             # change file language
:syntax off                  # For large files disable syntax
```

### VSCode & windows shortcuts

```bash
# Windows Shortcuts
Alt + tab                  # Switch between two windows
Start + tab                # Switch between all windows
Start + arrows             # To snap
Ctrl + w                   # Closes tab
Alt + F4                   # Closes window

ctrl+x, ctrl+c, ctrl+v              # Cut/Copy/Paste
ctrl + /                            # Toggle comments
tab, shift + tab                    # Indent, reverse indent
ctrl + left, ctrl + right           # Move cursor whole words
shift + <>, ctrl + shift + <>       # Select letter, select word at a time
ctrl + a                            # Select all
ctrl + s                            # Save file
ctrl + y, ctrl + z                  # Undo & red
```

```bash
Ctrl + P                # Open file search or commands by typing >
Ctrl + Shift + P        # Open enter command palette
Ctrl + +-               # Zoom in or out

# Navigation
Ctrl + Tab + arrows     # Switch between tabs
Ctrl + Tab              # Switch between tabs
Ctrl + `                # Switch to terminal minimize toggle
Ctrl + 1                # Switch to terminal minimize toggle

# Editing:
Ctrl + s                # Save file
Ctrl + f                # Find in file, Enter to go next
                        # Shift + Enter to go reverse
Ctrl + Shift + f        # Find in all project files
Ctrl + h                # Replace in file
```

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

## FAQ

- Ghostty TERM env issues. Provides ghostty features.
  `export TERM=xterm-256color <- TERM=xterm`
