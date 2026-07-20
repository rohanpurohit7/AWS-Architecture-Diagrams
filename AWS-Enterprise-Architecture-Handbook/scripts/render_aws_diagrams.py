from pathlib import Path
import runpy
import shutil

ROOT = Path("AWS-Enterprise-Architecture-Handbook")
SOURCE = ROOT / "docs" / "diagrams" / "aws-diagrams"
OUTPUT = ROOT / "docs" / "diagrams" / "rendered"
GALLERY = ROOT / "docs" / "diagrams" / "README.md"

OUTPUT.mkdir(parents=True, exist_ok=True)

sources = sorted(SOURCE.glob("*.py"))
if not sources:
    raise SystemExit(f"No Python AWS diagram sources found in {SOURCE}")

for old in OUTPUT.glob("*.png"):
    old.unlink()

for source in sources:
    print(f"Rendering {source}")
    runpy.run_path(str(source), run_name="__main__")

rendered = sorted(OUTPUT.glob("*.png"))
if len(rendered) != len(sources):
    raise SystemExit(f"Expected {len(sources)} rendered PNGs, found {len(rendered)}")

lines = [
    "# AWS Architecture Diagram Gallery",
    "",
    "These diagrams are generated as architecture-as-code with the Python `diagrams` library and Graphviz, using AWS service icons and professional grouped architecture boundaries.",
    "",
    "> PNG previews are the primary presentation format. Python source files under `aws-diagrams/` are the editable architecture-as-code definitions.",
    "",
]
for image in rendered:
    title = image.stem.replace("-", " ").title()
    source = SOURCE / f"{image.stem}.py"
    lines += [f"## {title}", "", f"![{title}](rendered/{image.name})", "", f"[Editable Python diagram source](aws-diagrams/{source.name})", ""]

GALLERY.write_text("\n".join(lines), encoding="utf-8")
print(f"Rendered {len(rendered)} AWS architecture diagrams into {OUTPUT}")
