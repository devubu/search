#!/usr/bin/env bash

# Interactive grep using rg, fzf, and bat
RELOAD='reload:rg -uuu --column --color=always --smart-case {q} || :'

fzf --disabled --ansi \
    --bind "start:$RELOAD" --bind "change:$RELOAD" \
    --delimiter : \
    --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' \
    --preview-window '+{2}/2'
