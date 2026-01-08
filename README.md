# dotfiles

Personal dotfiles for GitHub Codespaces configuration.

## Features

- Terraform installation and configuration

## Usage with GitHub Codespaces

To use these dotfiles in your GitHub Codespaces:

1. Go to your [GitHub Codespaces settings](https://github.com/settings/codespaces)
2. Under "Dotfiles", enable **Automatically install dotfiles**
3. Select this repository (`brignano/dotfiles`) from the dropdown
4. Create a new Codespace - your dotfiles will be automatically installed!

## What Gets Installed

- **Terraform**: Installs Terraform v1.5.7 (configurable via `TERRAFORM_VERSION` environment variable)
- Adds `$HOME/.local/bin` to your PATH for installed binaries

## How It Works

When you create a new Codespace, GitHub Codespaces will:
1. Clone this repository
2. Look for and execute the `install.sh` script
3. The `install.sh` script runs all the individual installation scripts (e.g., `install-terraform.sh`)

## Manual Installation

You can also run the installation script manually:

```bash
bash install.sh
```

Or install specific tools:

```bash
bash install-terraform.sh
```