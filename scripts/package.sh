#!/usr/bin/env bash
# Package each skill as a ZIP ready to upload in Claude (Customize > Skills).
# Claude expects the skill folder at the top level of the archive:
#   writing-core.zip
#   └── writing-core/
#       └── SKILL.md
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST="$ROOT/dist"
mkdir -p "$DIST"

cd "$ROOT/skills"
for dir in */; do
  name="${dir%/}"
  rm -f "$DIST/$name.zip"
  zip -rq "$DIST/$name.zip" "$name"
  echo "Built dist/$name.zip"
done
