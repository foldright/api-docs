#!/bin/bash
set -eEuo pipefail
cd "$(dirname "$(readlink -f "$0")")"

html_file=index.html

pandoc <(sed '0,/^[[:space:]]*$/d' README.md) \
    -f markdown -o "$html_file" \
    -s --metadata title='📚 API docs of foldright projects'
