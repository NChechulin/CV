#!/usr/bin/bash

# Remove autocompiled file
rm -rf main.pdf

# Create a directory for output files (don't fail if it exists)
mkdir -p output

# Build English version of CV
pdflatex "\let\ENGLISH=1 \input" main.tex
mv main.pdf output/cv.pdf
# Build Russian version of CV
pdflatex "\let\RUSSIAN=1 \input" main.tex
mv main.pdf output/cv_ru.pdf
# Clean LaTeX auxiliary files
latexmk -c
