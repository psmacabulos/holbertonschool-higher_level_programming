#!/bin/bash
# Holberton - Python Exceptions project bootstrap

FILES=(
    "0-safe_print_list.py"
    "1-safe_print_integer.py"
    "2-safe_print_list_integers.py"
    "3-safe_print_division.py"
    "4-list_division.py"
    "5-raise_exception.py"
    "6-raise_exception_msg.py"
)

MAINS=(
    "0-main.py"
    "1-main.py"
    "2-main.py"
    "3-main.py"
    "4-main.py"
    "5-main.py"
    "6-main.py"
)

README="README.md"

echo "Creating task files..."
for file in "${FILES[@]}"; do
    if [ ! -f "$file" ]; then
        cat << 'EOF' > "$file"
#!/usr/bin/python3
EOF
        chmod +x "$file"
        echo "  ✔ $file created"
    else
        echo "  ⚠ $file already exists"
    fi
done

echo ""
echo "Creating main.py test files..."
for main in "${MAINS[@]}"; do
    if [ ! -f "$main" ]; then
        cat << 'EOF' > "$main"
#!/usr/bin/python3
# Test file provided by Holberton
EOF
        chmod +x "$main"
        echo "  ✔ $main created"
    else
        echo "  ⚠ $main already exists"
    fi
done

echo ""
echo "Creating README.md..."
if [ ! -f "$README" ]; then
    cat << 'EOF' > "$README"
# Python - Exceptions

## Description
This project focuses on error and exception handling in Python.
It covers the difference between errors and exceptions, how to raise and handle exceptions,
and how to ensure proper program behavior when unexpected situations occur.

## Learning Objectives
At the end of this project, you should be able to explain:

- Why Python programming is awesome
- The difference between errors and exceptions
- What exceptions are and how to use them
- When and why to use exceptions
- How to correctly handle exceptions
- The purpose of catching exceptions
- How to raise built-in exceptions
- When to implement clean-up actions after an exception

## Requirements
- Ubuntu 20.04 LTS
- Python 3.8
- All files executable
- PEP 8 compliant

## Files
- 0-safe_print_list.py
- 1-safe_print_integer.py
- 2-safe_print_list_integers.py
- 3-safe_print_division.py
- 4-list_division.py
- 5-raise_exception.py
- 6-raise_exception_msg.py

## Author
Patrick Macabulos
EOF
    echo "  ✔ README.md created"
else
    echo "  ⚠ README.md already exists"
fi

echo ""
echo "Project bootstrap complete."
