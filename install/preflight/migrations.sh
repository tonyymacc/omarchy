#!/bin/bash

migrations_state_path=~/.local/state/omarchy/migrations
mkdir -p $migrations_state_path

for file in ~/.local/share/omarchy/migrations/*.sh; do
  touch "$migrations_state_path/$(basename "$file")"
done
