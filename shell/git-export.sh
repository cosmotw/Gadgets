#!/bin/sh

git archive --format=zip --output=$HOME/Downloads/$1 HEAD $(git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT ${2:-HEAD})
