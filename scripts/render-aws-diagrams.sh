#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="docs/diagrams/aws-icon"
OUTPUT_DIR="docs/diagrams/rendered"

mkdir -p "$OUTPUT_DIR"

if ! command -v plantuml >/dev/null 2>&1; then
  echo "PlantUML is required. Install PlantUML and Graphviz, then rerun this script." >&2
  exit 1
fi

for diagram in "$SOURCE_DIR"/*.puml; do
  [ -e "$diagram" ] || continue
  echo "Rendering $diagram"
  plantuml -tsvg -o "$(realpath --relative-to="$(dirname "$diagram")" "$OUTPUT_DIR")" "$diagram"
done

echo "Rendered SVG files are available in $OUTPUT_DIR"
