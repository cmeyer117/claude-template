#!/bin/bash
# Run this once on your local machine to install skills + global CLAUDE.md globally.
# Usage: bash install-global-skills.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$SCRIPT_DIR/.claude/skills"
GLOBAL_CLAUDE_MD_SRC="$SCRIPT_DIR/.claude/global-claude.md"
DEST_SKILLS="$HOME/.claude/skills"
DEST_MD="$HOME/.claude/CLAUDE.md"

mkdir -p "$DEST_SKILLS"

echo "Installing skills to $DEST_SKILLS..."
cp -r "$SKILLS_SRC"/. "$DEST_SKILLS/"
echo "✓ Skills installed"

echo "Installing global CLAUDE.md to $DEST_MD..."
cp "$GLOBAL_CLAUDE_MD_SRC" "$DEST_MD"
echo "✓ Global CLAUDE.md installed"

echo ""
echo "Done. Every Claude Code session on this machine now has the full skill stack."
echo "To update in the future, pull this repo and run this script again."
