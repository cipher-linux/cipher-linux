#!/bin/bash
# Creates Thunar/GTK sidebar bookmarks for standard folders on first login
MARKER="$HOME/.config/cipher-bookmarks-done"

if [ ! -f "$MARKER" ]; then
    mkdir -p "$HOME/.config/gtk-3.0"
    cat > "$HOME/.config/gtk-3.0/bookmarks" <<EOF
file://$HOME/Documents Documents
file://$HOME/Downloads Downloads
file://$HOME/Music Music
file://$HOME/Pictures Pictures
file://$HOME/Videos Videos
EOF
    touch "$MARKER"
fi
