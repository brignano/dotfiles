# dotfiles

Personal dotfiles for GitHub Codespaces configuration.

## Features

- Customizable dotfiles for GitHub Codespaces

## Usage with GitHub Codespaces

To use these dotfiles in your GitHub Codespaces:

1. Go to your [GitHub Codespaces settings](https://github.com/settings/codespaces)
2. Under "Dotfiles", enable **Automatically install dotfiles**
3. Select this repository (`brignano/dotfiles`) from the dropdown
4. Create a new Codespace - your dotfiles will be automatically installed!

## What Gets Installed

Currently, this dotfiles repository sets up a basic environment. Additional tools can be installed by adding installation scripts and uncommenting them in `install.sh`.

## How It Works

When you create a new Codespace, GitHub Codespaces will:
1. Clone this repository
2. Look for and execute the `install.sh` script
3. The `install.sh` script can run individual installation scripts as needed

## Manual Installation

You can also run the installation script manually:

```bash
bash install.sh
```