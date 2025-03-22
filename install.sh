#!/bin/bash

# NOTE:
# brewをインストールしておく

create_symlink() {
    src="$1"
    dest="$2"

    # Skip if already exit
    if [ -L "$dest" ] && [ "$(readlink -f "$dest")" = "$(readlink -f "$src")" ]; then
        return
    fi

    echo "🔗 $src → $dest"
    ln -sfn "$src" "$dest"
}

create_symlink "$HOME/dotfiles/.config" "$HOME/.config"
create_symlink "$HOME/dotfiles/.ssh" "$HOME/.ssh"

create_symlink "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

create_symlink "$HOME/dotfiles/.Brewfile" "$HOME/.Brewfile"
brew bundle --global

echo "✅ Completed!"
