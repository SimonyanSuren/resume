#!/usr/bin/env sh
set -eu

perl scripts/write-version.pl
mkdir -p build
lualatex -interaction=nonstopmode -halt-on-error -file-line-error \
  -output-directory=build \
  -jobname=Suren_Simonyan_Resume resume.tex
cp build/Suren_Simonyan_Resume.pdf Suren_Simonyan_Resume.pdf
