Create files 0-script.js → 8-script.js
Add basic headers
Ensure executable permission
#!/usr/bin/env bash

# Create JS files for DOM Manipulation tasks (0–8)

for i in {0..8}
do
    FILE="${i}-script.js"

    if [ -f "$FILE" ]; then
        echo "⚠️  $FILE already exists — skipping"
    else
        cat <<EOF > "$FILE"
#!/usr/bin/node
/*
 * File: $FILE
 * Description: DOM Manipulation task $i
 */

document.addEventListener('DOMContentLoaded', () => {
  // Your code here
});
EOF
        chmod +x "$FILE"
        echo "✅ Created $FILE"
    fi
done

echo "🚀 All files generated successfully"