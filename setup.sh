#!/usr/bin/env bash
set -e

# Determine the absolute directory where this repository is located
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GEMINI_DIR="$HOME/.gemini"

echo "Setting up Antigravity customization symlinks..."
echo "Target repo: $REPO_DIR"
echo "Antigravity config directory: $GEMINI_DIR"

mkdir -p "$GEMINI_DIR"

# 1. Symlink Skills Directory
ln -sfn "$REPO_DIR/skills" "$GEMINI_DIR/skills"
echo "  [✓] Linked skills: $GEMINI_DIR/skills -> $REPO_DIR/skills"

# 2. Symlink Global Behavioral Rules (GEMINI.md)
ln -sf "$REPO_DIR/GEMINI.md" "$GEMINI_DIR/GEMINI.md"
echo "  [✓] Linked global rules: $GEMINI_DIR/GEMINI.md -> $REPO_DIR/GEMINI.md"

echo ""
echo "Done! All skills and global rules are now active in the Antigravity CLI (agy) and IDE."
