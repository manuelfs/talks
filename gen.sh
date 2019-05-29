#!/bin/sh

for f in **/*.md; do
    pandoc "$f" -t beamer -o "${f%.md}.pdf"
done
