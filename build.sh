#!/bin/bash
set -e

pdflatex -interaction=nonstopmode resume.tex > /dev/null
pdflatex -interaction=nonstopmode resume.tex > /dev/null

echo "Built: resume.pdf"
