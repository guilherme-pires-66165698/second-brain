#!/bin/bash
# Setup Second Brain on WSL
# Run: curl -sSL https://raw.githubusercontent.com/guilherme-pires-66165698/second-brain/main/scripts/setup-wsl.sh | bash

set -e

echo "=== Second Brain Setup for WSL ==="

# Config
REPO_URL="https://github.com/guilherme-pires-66165698/second-brain.git"
INSTALL_DIR="$HOME/second-brain"

# 1. Clone repository
echo "[1/3] Cloning repository..."
if [ -d "$INSTALL_DIR" ]; then
    echo "Directory exists, pulling latest..."
    cd "$INSTALL_DIR" && git pull
else
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# 2. Setup git config
echo "[2/3] Configuring git..."
cd "$INSTALL_DIR"
git config pull.rebase false

# 3. Create sync alias
echo "[3/3] Creating aliases..."
SHELL_RC="$HOME/.bashrc"
[ -f "$HOME/.zshrc" ] && SHELL_RC="$HOME/.zshrc"

if ! grep -q "alias brain-sync" "$SHELL_RC" 2>/dev/null; then
    cat >> "$SHELL_RC" << 'ALIASES'

# Second Brain aliases
alias brain="cd ~/second-brain"
alias brain-sync="cd ~/second-brain && git pull && git add -A && git commit -m 'sync' && git push"
alias brain-daily="cd ~/second-brain && cp Templates/daily-note.md \"00-Inbox/Daily/$(date +%Y-%m-%d).md\""
ALIASES
    echo "Aliases added to $SHELL_RC"
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Location: $INSTALL_DIR"
echo ""
echo "Commands:"
echo "  brain       - Go to second-brain folder"
echo "  brain-sync  - Sync with GitHub"
echo "  brain-daily - Create today's daily note"
echo ""
echo "For Obsidian (Windows):"
echo "  Open as vault: \\\\wsl$\\Ubuntu$INSTALL_DIR"
echo ""
echo "Run: source $SHELL_RC"
