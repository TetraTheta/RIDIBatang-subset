#!/bin/bash

mkdir output
echo Converting RIDIBatang font to WOFF...
pyftsubset "RIDIBatang.otf" --flavor="woff" --with-zopfli --output-file="output/RIDIBatang-subset.woff" --text-file="glyphs.txt" --drop-tables+=FFTM --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
echo Converting RIDIBatang font to WOFF2...
pyftsubset "RIDIBatang.otf" --flavor="woff2" --output-file="output/RIDIBatang-subset.woff2" --text-file="glyphs.txt" --drop-tables+=FFTM --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
