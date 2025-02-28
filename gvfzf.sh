#!/usr/bin/env bash

# Interactive search and open with fzf, rg, bat, and nvim
RELOAD='reload:rg -uuu --column --color=always --smart-case {q} || :'

fzf --disabled --ansi \
    --bind "start:$RELOAD" --bind "change:$RELOAD" \
    --bind 'enter:become:nvim {1} +{2}' \
    --delimiter : \
    --preview 'batcat --style=full --color=always --highlight-line {2} {1}' \
    --preview-window '~4,+{2}+4/3,<80(up)'
