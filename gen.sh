#!/bin/sh

for f in **/*.md; do
    cd $(dirname $f)
    if [ -f header.tex ]; then
        pandoc --include-in-header header.tex "$(basename $f)" -t beamer -o "$(basename ${f%.md}.pdf)"
    else
        pandoc "$(basename $f)" -t beamer -o "$(basename ${f%.md}.pdf)"
    fi
    cd ..
done
