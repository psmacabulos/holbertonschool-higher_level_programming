#!/bin/bash

# ================================
# Holberton JavaScript Project Setup
# ================================

echo "🚀 Setting up JavaScript project..."

# Create README.md
cat <<EOL > README.md
# JavaScript - Fundamentals (Holberton)

This project introduces core JavaScript concepts using Node.js.

## 📚 Objectives

- Understand JavaScript syntax and execution
- Learn variables, data types, and operators
- Control program flow using conditionals and loops
- Work with functions, objects, and arrays
- Understand scope and best practices (const vs let)
- Use Node.js to execute scripts

## ⚙️ Requirements

- Ubuntu 20.04 LTS
- Node.js 14.x
- Files must be executable
- First line must be: #!/usr/bin/node
- Code must follow semistandard style

## ▶️ Running a Script

\`\`\`bash
./filename.js
\`\`\`

or

\`\`\`bash
node filename.js
\`\`\`

## 🧠 Notes

- Always prefer \`const\` over \`let\`
- Avoid using \`var\`
- Always use strict equality \`===\`
- Pay attention to \`undefined\` vs \`null\`

---

Prepared as part of Holberton School JavaScript curriculum.
EOL

echo "✅ README.md created"

# Create sample task files (adjust as needed)
FILES=(
"0-javascript_is_amazing.js"
"1-multi_languages.js"
"2-arguments.js"
"3-value_argument.js"
"4-concat.js"
"5-to_integer.js"
"6-multi_languages_loop.js"
"7-multi_c.js"
"8-square.js"
"9-add.js"
"10-factorial.js"
"11-second_biggest.js
"12-object.js
"13-add.js"
)

for file in "${FILES[@]}"
do
  cat <<EOL > $file
#!/usr/bin/node

EOL
  chmod +x $file
  echo "✅ Created $file"
done

# Make README executable (optional, but keeping consistent)
chmod +x README.md

echo "🎉 Setup complete!"
