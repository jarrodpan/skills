#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT=""
FORCE=0
MODE="copy"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target-root)
      TARGET_ROOT="${2:-}"
      shift 2
      ;;
    --force)
      FORCE=1
      shift
      ;;
    --mode)
      MODE="${2:-}"
      shift 2
      ;;
    -h|--help)
      cat <<'HELP'
Usage: ./scripts/install-codex-skills.sh [--target-root PATH] [--force] [--mode copy|symlink]

Defaults:
  --target-root  $CODEX_HOME/skills if CODEX_HOME is set, otherwise $HOME/.codex/skills
  --mode         copy
HELP
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

if [[ "$MODE" != "copy" && "$MODE" != "symlink" ]]; then
  echo "Invalid mode: $MODE. Use copy or symlink." >&2
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ -z "$TARGET_ROOT" ]]; then
  if [[ -n "${CODEX_HOME:-}" ]]; then
    TARGET_ROOT="$CODEX_HOME/skills"
  else
    TARGET_ROOT="$HOME/.codex/skills"
  fi
fi

mkdir -p "$TARGET_ROOT"

found_any=0
for skill_dir in "$REPO_ROOT"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue
  found_any=1

  skill_name="$(basename "$skill_dir")"
  destination="$TARGET_ROOT/$skill_name"

  if [[ -e "$destination" || -L "$destination" ]]; then
    if [[ "$FORCE" -ne 1 ]]; then
      echo "Skip existing skill: $skill_name"
      continue
    fi
    rm -rf "$destination"
  fi

  if [[ "$MODE" == "symlink" ]]; then
    ln -s "$skill_dir" "$destination"
  else
    cp -R "$skill_dir" "$destination"
  fi

  echo "Installed: $skill_name"
done

if [[ "$found_any" -ne 1 ]]; then
  echo "No skill folders found in repository root." >&2
  exit 1
fi

echo "Codex skills installed to: $TARGET_ROOT"
