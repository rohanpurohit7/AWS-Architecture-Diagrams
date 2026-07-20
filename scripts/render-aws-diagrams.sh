#!/usr/bin/env bash
set -euo pipefail

HANDBOOK_ROOT="AWS-Enterprise-Architecture-Handbook"
SOURCE_DIR="$HANDBOOK_ROOT/docs/diagrams/aws-icon"
OUTPUT_DIR="$HANDBOOK_ROOT/docs/diagrams/rendered"

mkdir -p "$OUTPUT_DIR"

if ! command -v plantuml >/dev/null 2>&1; then
  echo "PlantUML is required. Install PlantUML and Graphviz, then rerun this script." >&2
  exit 1
fi

find "$SOURCE_DIR" -maxdepth 1 -type f -name '*.puml' -print0 | while IFS= read -r -d '' diagram; do
  echo "Rendering $diagram"
  plantuml -tsvg -o "$(realpath --relative-to="$(dirname "$diagram")" "$OUTPUT_DIR")" "$diagram"
done

cat > "$HANDBOOK_ROOT/docs/diagrams/README.md" <<'EOF'
# AWS Architecture Diagram Gallery

Rendered SVG previews are the primary presentation format for this handbook. PlantUML files are retained only as editable diagram source.

> If you are browsing on GitHub, open this page or the rendered SVG files rather than the `.puml` sources.

EOF

for svg in "$OUTPUT_DIR"/*.svg; do
  [ -e "$svg" ] || continue
  name="$(basename "$svg" .svg)"
  title="$(echo "$name" | tr '-' ' ')"
  {
    echo "## $title"
    echo
    echo "![${title}](rendered/$(basename "$svg"))"
    echo
    if [ -f "$SOURCE_DIR/$name.puml" ]; then
      echo "[Editable PlantUML source](aws-icon/$name.puml)"
      echo
    fi
  } >> "$HANDBOOK_ROOT/docs/diagrams/README.md"
done

echo "Rendered SVG files are available in $OUTPUT_DIR"
