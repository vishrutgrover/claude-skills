#!/usr/bin/env bash
# Symlink skills into ~/.claude/skills so edits here apply everywhere.
# Usage: ./install.sh            # all skills
#        ./install.sh grunt tldr # just these
#        ./install.sh --remove grunt
set -euo pipefail

SRC="$(cd "$(dirname "$0")/skills" && pwd)"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$DEST"

remove=false
if [[ "${1:-}" == "--remove" ]]; then remove=true; shift; fi

names=("$@")
if [[ ${#names[@]} -eq 0 ]]; then
  for d in "$SRC"/*/; do names+=("$(basename "$d")"); done
fi

for n in "${names[@]}"; do
  [[ -d "$SRC/$n" ]] || { echo "no such skill: $n" >&2; continue; }
  if $remove; then
    [[ -L "$DEST/$n" ]] && rm "$DEST/$n" && echo "removed $n"
  else
    ln -sfn "$SRC/$n" "$DEST/$n" && echo "installed $n"
  fi
done
