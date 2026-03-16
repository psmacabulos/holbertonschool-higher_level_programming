
#!/bin/bash

# Holberton Python Inheritance Project Scaffolder
# This script creates task files, test main files, and a README.md

echo "Creating Python Inheritance project structure..."

# Task files
tasks=(
"0-lookup.py"
"1-my_list.py"
"2-is_same_class.py"
"3-is_kind_of_class.py"
"4-inherits_from.py"
"5-base_geometry.py"
"6-base_geometry.py"
"7-base_geometry.py"
"8-rectangle.py"
"9-rectangle.py"
"10-square.py"
"11-square.py"
"100-my_int.py"
"101-add_attribute.py"
)

# Create task files
for file in "${tasks[@]}"
do
    if [ ! -f "$file" ]; then
        touch "$file"
        echo "#!/usr/bin/python3" > "$file"
        chmod +x "$file"
        echo "Created $file"
    fi
done

# Create main test files
for file in "${tasks[@]}"
do
    num=$(echo $file | cut -d'-' -f1)
    main_file="${num}-main.py"

    if [ ! -f "$main_file" ]; then
        cat <<EOF > "$main_file"
#!/usr/bin/python3
# Test file for $file

if __name__ == "__main__":
    print("Running test for $file")
EOF
        chmod +x "$main_file"
        echo "Created $main_file"
    fi
done

# Create README
if [ ! -f "README.md" ]; then
cat <<EOF > README.md
# Python - Inheritance

This project covers Object-Oriented Programming concepts in Python focusing on:

- Superclasses and subclasses
- Method overriding
- Multiple inheritance
- isinstance(), issubclass(), type(), super()
- Attribute inheritance
- Python class hierarchy

## Tasks

0. Lookup
1. My list
2. Exact same object
3. Same class or inherited
4. Only subclass
5. BaseGeometry
6. BaseGeometry improvement
7. Integer validator
8. Rectangle
9. Full rectangle
10. Square
11. Square improvement
100. MyInt
101. Add attribute

## Usage

Run the scaffolding script:

```bash
./start.sh
```

This will generate all starter files and test files for the project.
EOF

echo "Created README.md"
fi

echo "Project scaffolding complete."
