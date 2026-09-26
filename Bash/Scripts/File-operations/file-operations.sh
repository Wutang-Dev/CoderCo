#!/bin/bash

# Function to read a file line by line

read_file() {
    local file_path="$1"

    if [ ! -f "$file_path" ] || [ ! -r "$file_path" ]; then
        echo "Error: File does not exist or cannot be read."
        return 1
    fi

    while IFS= read -r line || [[ -n "$line" ]]; do
        echo "$line"
    done < "$file_path"
}

read_file "./log.txt"