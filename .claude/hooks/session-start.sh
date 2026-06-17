#!/bin/bash
set -euo pipefail

# Only run in remote (web) sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

SKILLS_SRC="${CLAUDE_PROJECT_DIR}/.claude/skills"
SKILLS_DEST="$HOME/.claude/skills"
GLOBAL_CLAUDE_MD="$HOME/.claude/CLAUDE.md"
GLOBAL_CLAUDE_MD_SRC="${CLAUDE_PROJECT_DIR}/.claude/global-claude.md"

mkdir -p "$SKILLS_DEST"

# Install skills globally
if [ -d "$SKILLS_SRC" ]; then
  cp -r "$SKILLS_SRC"/. "$SKILLS_DEST/"
  echo "Skills installed to $SKILLS_DEST"
else
  echo "No skills directory found at $SKILLS_SRC"
fi

# Install global CLAUDE.md
if [ -f "$GLOBAL_CLAUDE_MD_SRC" ]; then
  cp "$GLOBAL_CLAUDE_MD_SRC" "$GLOBAL_CLAUDE_MD"
  echo "Global CLAUDE.md installed to $GLOBAL_CLAUDE_MD"
else
  echo "No global-claude.md found at $GLOBAL_CLAUDE_MD_SRC"
fi
