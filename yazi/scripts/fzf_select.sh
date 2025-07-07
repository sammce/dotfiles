#!/bin/bash
selected=$(fd --type f . ~ | fzf)
if [[ -n "$selected" ]]; then
  echo "$selected"
fi
