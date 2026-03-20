#!/bin/bash

# Create README.md
cat << 'EOF' > README.md
# Python Serialization Project

## Overview
This project focuses on understanding and implementing serialization techniques in Python. You will learn how to convert Python objects into formats suitable for storage and transmission, and how to reconstruct them back into usable objects.

## Learning Objectives
By completing this project, you will be able to:
- Understand the difference between marshaling and serialization
- Serialize and deserialize data using JSON
- Work with CSV and XML data formats
- Use Python-specific serialization with pickle
- Handle data persistence and communication between systems

## Tasks Summary

### Task 00 - Basic Serialization
- Convert Python objects to JSON strings and back

### Task 01 - Pickle
- Serialize and deserialize Python objects using pickle

### Task 02 - CSV
- Convert and handle CSV data

### Task 03 - XML
- Work with XML serialization and parsing

## Requirements
- Python 3.x
- Follow PEP8 style guidelines
- All files must be executable

## Author
Holberton Student
EOF

# Correct task filenames
files=(
"task_00_basic_serialization.py"
"task_01_pickle.py"
"task_02_csv.py"
"task_03_xml.py"
)

for filename in "${files[@]}"
do
    touch "$filename"
    chmod +x "$filename"

    cat << 'EOF' > "$filename"
#!/usr/bin/env python3
"""Module docstring"""

def main():
    """Main function"""
    pass


if __name__ == "__main__":
    main()
EOF

done

echo "Project scaffold created successfully."
