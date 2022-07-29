#!/bin/bash

source ./Scripts/activate

FONT1="RIDIBatang"
FONT1_FILE="RIDIBatang.otf"
FONT1_NEW_FILE="RIDIBatang-subset"
DEST="dist/webfont"

# Create dist dir
mkdir -p $DEST 2> /dev/null

# WOFF
echo Converting $FONT1 font to WOFF...
pyftsubset "$FONT1_FILE" --flavor="woff" --with-zopfli --output-file="$DEST/$FONT1_NEW_FILE.woff" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.

echo Converting $FONT1 font to WOFF2...
pyftsubset "$FONT1_FILE" --flavor="woff2" --output-file="$DEST/$FONT1_NEW_FILE.woff2" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
