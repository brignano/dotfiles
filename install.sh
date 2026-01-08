#!/usr/bin/env bash
# This script is automatically executed by GitHub Codespaces
# when a new codespace is created with this dotfiles repository.

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles..."

# Install Terraform
if [ -f "$DOTFILES_DIR/install-terraform.sh" ]; then
  echo "Running install-terraform.sh..."
  bash "$DOTFILES_DIR/install-terraform.sh"
fi

echo "Dotfiles installation complete!"
