#!/usr/bin/env bash
# Symlink skills into ~/.claude/skills so edits here apply everywhere.
# Looks in skills/ and vendor/*/skills/ (caveman, ponytail).
# Usage: ./install.sh              # all skills
#        ./install.sh caveman tldr # just these
#        ./install.sh --remove caveman
#        ./install.sh --list
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
git -C "$ROOT" submodule update --init --quiet 2>/dev/null || true

find_skill() {
  for d in "$ROOT/skills/$1" "$ROOT"/vendor/*/skills/"$1"; do
    [[ -f "$d/SKILL.md" ]] && { echo "$d"; return; }
  done
}
all_skills() {
  for d in "$ROOT"/skills/*/ "$ROOT"/vendor/*/skills/*/; do
    [[ -f "$d/SKILL.md" ]] && basename "$d"
  done
}

case "${1:-}" in
  --list) all_skills; exit ;;
  --remove) remove=true; shift ;;
  *) remove=false ;;
esac

names=("$@")
[[ ${#names[@]} -eq 0 ]] && while read -r n; do names+=("$n"); done < <(all_skills)

mkdir -p "$DEST"
for n in "${names[@]}"; do
  if $remove; then
    [[ -L "$DEST/$n" ]] && rm "$DEST/$n" && echo "removed $n"
    continue
  fi
  src="$(find_skill "$n")"
  [[ -n "$src" ]] || { echo "no such skill: $n" >&2; continue; }
  ln -sfn "$src" "$DEST/$n" && echo "installed $n"
done
