#!/bin/bash

TODO_FILE="$HOME/Documents/todo.txt"
MONTH_FILE="$HOME/Documents/todo-$(date +%B).txt"
CHECKSUM_FILE="$HOME/.conky/MX-ToDo/checksum"

if ! md5sum -c "$CHECKSUM_FILE" &> /dev/null; then
    # Normalization
    sed -i '
    s/- \[ *[Xx] *\]/- [x]/g;  # Normalize [X] or [x] with optional spaces
    s/- \[ *\]/- [ ]/g;         # Normalize empty [ ]
    s/^ *//; s/ *$//;           # Trim whitespace
    /^$/d                       # Delete empty lines
    ' "$TODO_FILE"

    # Move completed tasks
    grep '^- \[x\]' "$TODO_FILE" >> "$MONTH_FILE"

    # Remove from todo
    sed -i '/^- \[x\]/d' "$TODO_FILE"

    # Clean up monthly file
    sort -u "$MONTH_FILE" | grep -v '^ *$' > "$MONTH_FILE.tmp"
    mv "$MONTH_FILE.tmp" "$MONTH_FILE"

    # Overwrite
    md5sum "$TODO_FILE" > "$CHECKSUM_FILE"

fi


