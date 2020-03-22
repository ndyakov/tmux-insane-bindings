# Bindings
set -s escape-time 50

# Use C-a as prefix
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Switch to last window with double prefix
bind C-a last-window

# reload configuration with r
bind r source-file ~/.tmux.conf \; display "Configuration reloaded!"

# Switch to last pane with C-q
bind -r C-q last-pane

# select panes with hjkl
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# resizing panes with HJKL
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# Maximize and restore a pane
unbind Up
bind Up new-window -d -n tmp \; swap-pane -s tmp.1 \; select-window -t tmp
unbind Down
bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp

# Copy
setw -g mode-keys vi
set -g mode-keys vi

# Copying selection vim style
# OSX specific
# requires reattach-to-user-namespace
# install it with brew
bind Escape copy-mode     # enter copy mode; default [
bind p paste-buffer       # paste; default ]
bind -T copy-mode-vi Escape  send -X cancel   # exit copy mode; or hit q
bind -T copy-mode-vi v send -X begin-selection   # begin visual mode
bind -T copy-mode-vi V send -X select-line   # visual line
bind -T copy-mode-vi y send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
bind-key -T copy-mode-vi r send -X rectangle-toggle # visual block toggle

bind = split-window -c "#{pane_current_path}" -h
bind - split-window -c "#{pane_current_path}" -v

bind c new-window -c "#{pane_current_path}"

bind ] next-window
bind [ previous-window
bind + copy-mode

# vim: set syntax=tmux:
