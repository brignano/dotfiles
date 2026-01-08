#!/usr/bin/env bash
set -e
TERRAFORM_VERSION=${TERRAFORM_VERSION:-1.5.7}
mkdir -p "$HOME/.local/bin"

if ! command -v terraform >/dev/null; then
  curl -fsSL "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -o /tmp/terraform.zip
  unzip -o /tmp/terraform.zip -d "$HOME/.local/bin"
  chmod +x "$HOME/.local/bin/terraform"
  rm /tmp/terraform.zip
  # make PATH persistent
  grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi