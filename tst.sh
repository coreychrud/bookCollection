#!/bin/bash

TARGET_DIR="${1:-.}"

find "$TARGET_DIR" -type f -print0 | while IFS= read -r -d '' file; do
    if file "$file" | grep -q 'CRLF'; then
        echo "Converting $file from CRLF to LF..."
        dos2unix "$file"
    fi
done

echo "Done."