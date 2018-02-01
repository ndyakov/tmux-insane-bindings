# tmux-insane-bindings

Tmux vim-like bindings.

## Install

0. Use [TPM](https://github.com/tmux-plugins/tpm)

1. Add to your `.tmux.conf`

```
set -g @plugin 'ndyakov/tmux-insane-bindings'
```

2. Install -> `prefix + I`

## Bindings

### General

- `Ctrl+a` is prefix
- `r` to reload config
- `/` to switch to last window
- `Ctrl+q` to switch to last pane
- `h,j,k,l` to select a pane
- `H,J,K,L` to resize a pane
- `Up` to move a pane to window
- `Down` to restore the pane in its place

### Copy

Set for OSX, requires `reattach-to-user-namespace` :

```
brew install reattach-to-user-namespace
```

- Enter in `copy-mode` with `Escape`.
- Visual selection like in vim (`v` or `V`)
- `r` for block selection.
- `y` yanks in system clipboard
