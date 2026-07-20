#!/usr/bin/env bash
set -euo pipefail

HANDBOOK_ROOT="AWS-Enterprise-Architecture-Handbook"
SOURCE_DIR="$HANDBOOK_ROOT/docs/diagrams/aws-icon"
OUTPUT_DIR="$HANDBOOK_ROOT/docs/diagrams/rendered"
GALLERY="$HANDBOOK_ROOT/docs/diagrams/README.md"

mkdir -p "$OUTPUT_DIR"

if [[ -n "${PLANTUML_JAR:-}" && -f "${PLANTUML_JAR}" ]]; then
  PLANTUML_CMD=(java -Djava.awt.headless=true -jar "$PLANTUML_JAR")
elif command -v plantuml >/dev/null 2>&1; then
  PLANTUML_CMD=(plantuml)
else
  echo "PlantUML is required. Set PLANTUML_JAR or install PlantUML." >&2
  exit 1
fi

mapfile -d '' diagrams < <(find "$SOURCE_DIR" -maxdepth 1 -type f -name '*.puml' -print0 | sort -z)

if (( ${#diagrams[@]} == 0 )); then
  echo "No PlantUML diagrams found in $SOURCE_DIR" >&2
  exit 1
fi

rm -f "$OUTPUT_DIR"/*.svg
failures=()

for diagram in "${diagrams[@]}"; do
  echo "Rendering $diagram"
  if ! "${PLANTUML_CMD[@]}" -failfast2 -tsvg -o "$(realpath --relative-to="$(dirname "$diagram")" "$OUTPUT_DIR")" "$diagram"; then
    failures+=("$diagram")
  fi
done

if (( ${#failures[@]} > 0 )); then
  echo "The following diagrams failed to render:" >&2
  printf ' - %s\n' "${failures[@]}" >&2
  exit 1
fi

cat > "$GALLERY" <<'EOF'
# AWS Architecture Diagram Gallery

Rendered SVG previews are the primary presentation format. PlantUML files are retained as editable architecture-as-code sources.

> On GitHub, open the SVG preview or this gallery rather than the `.puml` source when you want to view the architecture.

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
  } >> "$GALLERY"
done

echo "Rendered ${#diagrams[@]} SVG diagrams into $OUTPUT_DIR"