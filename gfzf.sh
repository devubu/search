#!/usr/bin/env bash

# Interactive grep using rg, fzf, and bat
TARGET_DIR="${1:-.}"

RELOAD="reload:rg -uu --column --color=always --smart-case {q} \"$TARGET_DIR\" || :"

fzf --disabled --ansi \
    --bind "start:$RELOAD" --bind "change:$RELOAD" \
    --delimiter : \
    --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' \
    --preview-window '+{2}/2'
