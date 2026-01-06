#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/nvim"
DEST="$HOME/.config/nvim"

# Check Neovim installed
if ! command -v nvim &>/dev/null; then
    echo "[ERROR] Neovim is not installed. Please install first."
    exit 1
fi

# Ensure parent dir exists
mkdir -p "$(dirname "$DEST")"

# Already correct symlink?
if [ -L "$DEST" ] && [ "$(readlink "$DEST")" = "$SRC" ]; then
    echo "ℹ️  Symlink already exists: $DEST"
    exit 0
fi

# Backup existing file/dir
if [ -e "$DEST" ] || [ -L "$DEST" ]; then
    echo "⚠️  Existing nvim config found, backing up..."
    mv "$DEST" "${DEST}.bak.$(date +%s)"
fi

echo "🔗 Creating symbolic link: $SRC → $DEST"
ln -s "$SRC" "$DEST"

echo "✅ Successfully Completed!"
