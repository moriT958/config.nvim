#!/bin/bash

function create_symlink() {
    src="$1"
    dest="$2"

    # remove if already exit
    if [ -L "$dest" ] && [ "$(readlink -f "$dest")" = "$(readlink -f "$src")" ]; then
        unlink "$HOME/.config/nvim"
    fi

    echo "🔗 Creating symbolicLink... ($src → $dest)"
    ln -sfn "$src" "$dest"
}

# Check if Neovim installed
if ! command -v nvim &>/dev/null; then
    echo "[ERROR] Neovim is not installed. Please install first."
else
    create_symlink "$HOME/config.nvim/nvim" "$HOME/.config/nvim"
    echo "✅ Successfully Completed!"
fi
