#!/bin/bash
# Simple installation script for dotfiles

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Backup existing files
backup_if_exists() {
    if [ -f "$HOME/$1" ] || [ -d "$HOME/$1" ]; then
        echo "Backing up existing $1"
        mv "$HOME/$1" "$HOME/$1.backup.$(date +%Y%m%d_%H%M%S)"
    fi
}

# Create symlinks
create_link() {
    local src="$DOTFILES_DIR/$1"
    local dest="$HOME/$1"

    # Create parent directory if needed
    mkdir -p "$(dirname "$dest")"

    # Backup and create symlink
    backup_if_exists "$1"
    ln -sf "$src" "$dest"
    echo "Linked $1"
}

# Install main dotfiles
create_link ".bashrc"
create_link ".vimrc"
create_link ".gitconfig"
create_link ".tmux.conf"
create_link ".gitignore_global"

# Install config files
create_link ".config/bash/aliases"
create_link ".config/git/hooks/pre-commit"
create_link ".config/vim/plugins.list"
create_link ".config/system/preferences.conf"

# Install scripts (copy, don't link)
mkdir -p "$HOME/.local/bin"
cp "$DOTFILES_DIR/scripts/"* "$HOME/.local/bin/"
chmod +x "$HOME/.local/bin/"*
echo "Copied scripts to ~/.local/bin/"

echo ""
echo "Installation complete!"
echo "Run 'source ~/.bashrc' to reload your shell"
echo ""
echo "Don't forget to:"
echo "- Update .gitconfig with your name and email"
echo "- Install vim plugins with your preferred plugin manager"
echo "- Add ~/.local/bin to your PATH if it's not already there"
