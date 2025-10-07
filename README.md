# Dotfiles Backup

Basic development environment backup configurations for quick system setup.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles-bak.git
   cd dotfiles-bak
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

3. Reload your shell:
   ```bash
   source ~/.bashrc
   ```

## What's included

- **Bash**: Basic prompt, essential aliases, and completion
- **Vim**: Minimal configuration with sensible defaults
- **Git**: Standard aliases and color settings
- **Tmux**: Basic keybindings and mouse support
- **System**: Backup utilities and system monitoring scripts

## Purpose

This is a stripped-down backup configuration that can be quickly deployed on any Unix-like system. Designed to be minimal but functional for basic development work.

## Backup System

The included backup utilities automatically sync important directories and system configurations. The system backup components are located in `.config/system/` and handle various backup tasks.

## Usage

Deploy this on new systems or use as a fallback configuration. All components are designed to work independently and won't conflict with existing setups.

## License

MIT License - basic utilities for system setup and backup.
