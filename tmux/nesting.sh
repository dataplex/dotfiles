# ==============================================
# ===   Nesting local and remote sessions     ===
# ==============================================

# Session is considered to be remote when we ssh into host
if-shell 'test -n "$SSH_CLIENT"' \
    'source-file $DOTFILES/tmux/tmux.remote.conf'

# We want to have single prefix key "C-a", usable both for local and remote session
# we don't want to "C-a" + "a" approach either
# Idea is to turn off all key bindings and prefix handling on local session,
# so that all keystrokes are passed to inner/remote session

# see: toggle on/off all keybindings · Issue #237 · tmux/tmux - https://github.com/tmux/tmux/issues/237

# Also, change some visual styles when window keys are off
bind -T root F12  \
    set prefix None \;\
    set key-table off \;\
    set status-style "fg=$color_status_text,bg=$color_window_off_status_bg" \;\
    set window-status-current-format "#[fg=$color_window_off_status_bg,bg=$color_window_off_status_current_bg]$separator_powerline_right#[default] #I:#W# #[fg=$color_window_off_status_current_bg,bg=$color_window_off_status_bg]$separator_powerline_right#[default]" \;\
    set window-status-current-style "fg=$color_dark,bold,bg=$color_window_off_status_current_bg" \;\
    if -F '#{pane_in_mode}' 'send-keys -X cancel' \;\
    refresh-client -S \;\

bind -T off F12 \
  set -u prefix \;\
  set -u key-table \;\
  set -u status-style \;\
  set -u window-status-current-style \;\
  set -u window-status-current-format \;\
  refresh-client -S

