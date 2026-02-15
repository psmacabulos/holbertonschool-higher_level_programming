#!/bin/bash
# ============================================================
# Holberton / ALX - Python Test-Driven Development Bootstrap
# This script creates all standard task files with main files
# and a structured README for the TDD chapter.
# ============================================================

set -e

echo "Creating project structure..."

# -----------------------------
# Standard Holberton TDD Tasks
# -----------------------------
TASKS=(
"0-add_integer"
"2-matrix_divided"
"3-say_my_name"
"4-print_square"
"5-text_indentation"
"6-max_integer"
"100-matrix_mul"
"101-lazy_matrix_mul"
)

# -----------------------------
# Create task files + main files
# -----------------------------
for task in "${TASKS[@]}"
do
    FILE="${task}.py"
    MAIN="${task%-*}-main.py"

    # Create Python task file
    cat <<EOF > $FILE
#!/usr/bin/python3
"""
Module documentation for $FILE

Write documentation first.
Add doctests before implementation.
"""

# Your implementation goes below


if __name__ == "__main__":
    import doctest
    doctest.testmod()
EOF

    chmod +x $FILE

    # Create corresponding main file
    cat <<EOF > $MAIN
#!/usr/bin/python3

# Manual testing file for $FILE

# Import your function here manually when implemented
# Example:
# from ${task} import function_name

if __name__ == "__main__":
    pass
EOF

    chmod +x $MAIN

done

# -----------------------------
# Create tests directory
# -----------------------------
mkdir -p tests
touch tests/6-max_integer_test.py
chmod +x tests/6-max_integer_test.py

# -----------------------------
# Create README.md
# -----------------------------
cat <<EOF > README.md
# Python - Test-driven development

## Author
Holberton / ALX Student

---

## Project Overview

This project focuses on:

- Writing documentation first
- Writing tests before implementation (TDD)
- Using doctest for interactive testing
- Defensive programming
- Handling edge cases
- Raising precise exceptions

---

## Learning Objectives

- Why Python is powerful
- What interactive tests are
- Why automated testing matters
- How to write docstrings with doctest
- How to write proper module/function documentation
- How to think about edge cases

---

## How to Run Doctest

\`\`\`
python3 -m doctest -v filename.py
\`\`\`

---

## Project Structure

Each task includes:

- Task file (e.g., 0-add_integer.py)
- Corresponding main file (0-main.py)
- Executable permissions
- tests/ directory for unit testing when required

---

## TDD Workflow

1. Write docstring + doctests
2. Run doctest (should fail)
3. Implement minimal code
4. Refactor safely

---

## Important Rule

Do not trust the user.
Always validate types and edge cases.
EOF

chmod +x README.md

echo "Done."
echo "All task files, main files, tests folder, and README created."
