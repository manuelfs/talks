#!/bin/sh

for f in **/*.md; do
    cd $(dirname $f)
    pandoc "$(basename $f)" -t beamer -o "$(basename ${f%.md}.pdf)"
    cd ..
done
