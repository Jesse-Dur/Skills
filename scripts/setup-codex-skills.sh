#!/usr/bin/env bash
set -euo pipefail

# Link the skills in this checkout into Codex's user-level skill directory.
# Run this once in each environment after cloning the Skills repository.

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd -- "$script_dir/.." && pwd)"
codex_home="${CODEX_HOME:-$HOME/.codex}"
skills_root="$codex_home/skills"
link_path="$skills_root/personal"
source_path="$repo_root/skills"

mkdir -p "$source_path" "$skills_root"

if [[ -e "$link_path" && ! -L "$link_path" ]]; then
  echo "Refusing to replace existing non-symlink: $link_path" >&2
  exit 1
fi

if [[ -L "$link_path" ]]; then
  current_target="$(readlink "$link_path")"
  if [[ "$current_target" == "$source_path" ]]; then
    echo "Personal Codex skills already linked: $link_path"
    exit 0
  fi
  rm "$link_path"
fi

ln -s "$source_path" "$link_path"
echo "Linked personal Codex skills: $link_path -> $source_path"
