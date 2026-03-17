#!/bin/bash

# Create README
cat << 'EOF' > README.md
# Python - Input/Output

Holberton project on file handling and JSON.
EOF

# Array of task files (update if needed)
tasks=(
"0-read_file.py"
"1-write_file.py"
"2-append_write.py"
"3-to_json_string.py"
"4-from_json_string.py"
"5-save_to_json_file.py"
"6-load_from_json_file.py"
"7-add_item.py"
"8-class_to_json.py"
"9-student.py"
"10-student.py"
"11-student.py"
"12-pascal_triangle.py"
)

# Create files and make executable
for file in "${tasks[@]}"; do
    touch "$file"
    chmod +x "$file"
done

# Create main files
cat << 'EOF' > 0-main.py
#!/usr/bin/python3
read_file = __import__('0-read_file').read_file

read_file("my_file_0.txt")
EOF

cat << 'EOF' > 1-main.py
#!/usr/bin/python3
write_file = __import__('1-write_file').write_file

nb_characters = write_file("my_file_1.txt", "Hello Holberton!")
print(nb_characters)
EOF

cat << 'EOF' > 2-main.py
#!/usr/bin/python3
append_write = __import__('2-append_write').append_write

nb_characters = append_write("my_file_2.txt", "Holberton School is cool!")
print(nb_characters)
EOF

cat << 'EOF' > 3-main.py
#!/usr/bin/python3
to_json_string = __import__('3-to_json_string').to_json_string

my_obj = { 'name': "John", 'age': 30 }
s = to_json_string(my_obj)
print(s)
EOF

cat << 'EOF' > 4-main.py
#!/usr/bin/python3
from_json_string = __import__('4-from_json_string').from_json_string

s = '{"name": "John", "age": 30}'
my_obj = from_json_string(s)
print(my_obj)
EOF

cat << 'EOF' > 5-main.py
#!/usr/bin/python3
save_to_json_file = __import__('5-save_to_json_file').save_to_json_file

my_obj = { 'name': "John", 'age': 30 }
save_to_json_file(my_obj, "my_file_5.json")
EOF

cat << 'EOF' > 6-main.py
#!/usr/bin/python3
load_from_json_file = __import__('6-load_from_json_file').load_from_json_file

my_obj = load_from_json_file("my_file_5.json")
print(my_obj)
EOF

cat << 'EOF' > 7-main.py
#!/usr/bin/python3
# run: ./7-add_item.py item1 item2
pass
EOF

cat << 'EOF' > 8-main.py
#!/usr/bin/python3
class_to_json = __import__('8-class_to_json').class_to_json

class Test:
    def __init__(self):
        self.name = "John"
        self.age = 30

t = Test()
print(class_to_json(t))
EOF

cat << 'EOF' > 12-main.py
#!/usr/bin/python3
pascal_triangle = __import__('12-pascal_triangle').pascal_triangle

print(pascal_triangle(5))
EOF

echo "Setup complete!"
