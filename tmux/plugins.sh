# ============================
# ===       Plugins        ===
# ============================
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-online-status'
set -g @plugin 'tmux-plugins/tmux-sidebar'
set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'samoshkin/tmux-plugin-sysstat'

# Plugin properties
set -g @sidebar-tree 't'
set -g @sidebar-tree-focus 'T'
set -g @sidebar-tree-command 'tree -C'

set -g @open-S 'https://www.google.com/search?q='
