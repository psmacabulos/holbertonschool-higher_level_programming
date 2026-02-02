#!/usr/bin/env bash
# Holberton - Python Data Structures: Lists, Tuples
# Project scaffolding script

FILES=(
    "0-print_list_integer.py"
    "1-element_at.py"
    "2-replace_in_list.py"
    "3-print_reversed_list_integer.py"
    "4-new_in_list.py"
    "5-no_c.py"
    "6-print_matrix_integer.py"
    "7-add_tuple.py"
    "8-multiple_returns.py"
    "9-max_integer.py"
    "10-divisible_by_2.py"
    "11-delete_at.py"
    "12-switch.py"
)

SHEBANG='#!/usr/bin/python3'

for file in "${FILES[@]}"; do
    echo "$SHEBANG" > "$file"
    echo "" >> "$file"
    chmod u+x "$file"
done

cat << 'EOF' > README.md
# Python - Data Structures: Lists, Tuples

## Description
This project introduces Python data structures, focusing on lists and tuples.
It covers how to create, access, modify, and iterate over sequences, as well as
when to use lists versus tuples.

## Learning Objectives
At the end of this project, you should be able to explain:

- What lists are and how to use them
- Differences and similarities between strings and lists
- Common list methods and how to use them
- How to use lists as stacks and queues
- What list comprehensions are
- What tuples are and how to use them
- When to use tuples versus lists
- What a sequence is
- What tuple packing and unpacking are
- What the `del` statement does

## Requirements
- Python 3
- All files interpreted/compiled on Ubuntu 20.04 LTS
- All files end with a new line
- The first line of all files must be exactly:
  `#!/usr/bin/python3`
- Code must use PEP 8 style
- All files must be executable
- No importing of modules unless explicitly allowed

## Files
| File | Description |
|------|------------|
| 0-print_list_integer.py | Prints all integers of a list |
| 1-element_at.py | Retrieves an element from a list |
| 2-replace_in_list.py | Replaces an element at a specific position |
| 3-print_reversed_list_integer.py | Prints a list in reverse |
| 4-new_in_list.py | Replaces an element without modifying original list |
| 5-no_c.py | Removes all characters 'c' and 'C' from a string |
| 6-print_matrix_integer.py | Prints a matrix of integers |
| 7-add_tuple.py | Adds two tuples |
| 8-multiple_returns.py | Returns tuple with string length and first char |
| 9-max_integer.py | Finds the biggest integer in a list |
| 10-divisible_by_2.py | Finds multiples of 2 in a list |
| 11-delete_at.py | Deletes an item at a specific position |
| 12-switch.py | Switches values of two variables |

## Author
Holberton School Student
EOF

echo "✅ Data Structures project scaffold created successfully."
