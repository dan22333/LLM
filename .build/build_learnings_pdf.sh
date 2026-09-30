#!/usr/bin/env bash
# Build a book-style PDF from a *_LEARNINGS.md source.
#
#   bash build_learnings_pdf.sh <NAME>_LEARNINGS.md
#
# Pipeline: pandoc (gfm + LaTeX math + TOC + KaTeX) -> standalone HTML
#           -> headless Chrome --print-to-pdf -> <NAME>_LEARNINGS.pdf
#
# Math: LaTeX is required and rendered with KaTeX, using $...$ / $$...$$
# (tex_math_dollars). The gfm reader does NOT support \(...\)/\[...\]
# (tex_math_single_backslash), so write all math with dollar delimiters. Never
# rely on ASCII/Unicode-only math; write equations in LaTeX so KaTeX typesets them.
set -euo pipefail

SRC="${1:?usage: build_learnings_pdf.sh <NAME>_LEARNINGS.md}"
[ -f "$SRC" ] || { echo "No such file: $SRC" >&2; exit 1; }
DIR="$(cd "$(dirname "$SRC")" && pwd)"
BASE="$(basename "$SRC" .md)"
OUT="$DIR/$BASE.pdf"
ASSETS="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

command -v pandoc >/dev/null || { echo "pandoc not found" >&2; exit 1; }

# Locate Chrome / Chromium.
CHROME=""
for c in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "$(command -v google-chrome 2>/dev/null || true)" \
  "$(command -v chromium 2>/dev/null || true)" \
  "$(command -v chromium-browser 2>/dev/null || true)"; do
  [ -n "$c" ] && [ -x "$c" ] && { CHROME="$c"; break; }
done
[ -n "$CHROME" ] || { echo "Google Chrome / Chromium not found" >&2; exit 1; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# Wrap the book CSS in a <style> block for pandoc to inline into <head>.
printf '<style>\n' > "$TMP/head.html"
cat "$ASSETS/pdf.css" >> "$TMP/head.html"
printf '\n</style>\n' >> "$TMP/head.html"

pandoc "$SRC" \
  -f gfm+tex_math_dollars \
  -t html5 -s --toc --toc-depth=2 --katex \
  --include-in-header="$TMP/head.html" \
  -o "$TMP/learnings.html"

"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=25000 \
  --print-to-pdf="$TMP/out.pdf" "file://$TMP/learnings.html" >/dev/null 2>&1 || true

[ -f "$TMP/out.pdf" ] || { echo "Chrome failed to produce a PDF" >&2; exit 1; }
cp "$TMP/out.pdf" "$OUT"

SIZE=$(wc -c < "$OUT" | tr -d ' ')
echo "Built $OUT ($SIZE bytes)"
command -v pdfinfo >/dev/null && pdfinfo "$OUT" | grep -E '^Pages' || true
