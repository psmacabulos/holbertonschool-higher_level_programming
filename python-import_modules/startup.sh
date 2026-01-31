#!/bin/bash

# List of required project files
FILES=(
    "0-add.py"
    "1-calculation.py"
    "2-args.py"
    "3-infinite_add.py"
    "4-hidden_discovery.py"
    "5-variable_load.py"
    "README.md"
)

for file in "${FILES[@]}"; do
    # Skip file if it already exists
    if [ -f "$file" ]; then
        echo "⚠ $file already exists — skipping"
        continue
    fi

    if [[ "$file" == *.py ]]; then
        echo '#!/usr/bin/python3' > "$file"
        chmod +x "$file"
    else
        touch "$file"
    fi

    echo "✔ Created $file"
done

echo "✅ Project files initialized in $(pwd)"
