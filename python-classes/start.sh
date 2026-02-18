#!/usr/bin/env bash

echo "Creating Holberton Python - Classes and Objects starter files..."

# Task 0
cat << 'EOF' > task_0.py
#!/usr/bin/python3
"""Module that defines an empty Square class."""

class Square:
    """Defines an empty square."""
    pass
EOF

cat << 'EOF' > main_0.py
#!/usr/bin/python3
"""Test file for task 0."""

from task_0 import Square

s = Square()
print(type(s))
EOF

# Task 1
cat << 'EOF' > task_1.py
#!/usr/bin/python3
"""Module that defines a Square with private size."""

class Square:
    """Defines a square with private size attribute."""

    def __init__(self, size):
        """Initialize square with size."""
        self.__size = size
EOF

cat << 'EOF' > main_1.py
#!/usr/bin/python3
"""Test file for task 1."""

from task_1 import Square

s = Square(5)
print(s._Square__size)
EOF

# Task 2
cat << 'EOF' > task_2.py
#!/usr/bin/python3
"""Module that defines a Square with validated size."""

class Square:
    """Defines a square with validated size."""

    def __init__(self, size=0):
        """Initialize square with size validation."""
        if not isinstance(size, int):
            raise TypeError("size must be an integer")
        if size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size
EOF

cat << 'EOF' > main_2.py
#!/usr/bin/python3
"""Test file for task 2."""

from task_2 import Square

try:
    Square(-1)
except Exception as e:
    print(e)

s = Square(3)
print(s._Square__size)
EOF

# Task 3
cat << 'EOF' > task_3.py
#!/usr/bin/python3
"""Module that defines a Square with area method."""

class Square:
    """Defines a square with area calculation."""

    def __init__(self, size=0):
        """Initialize square with size validation."""
        if not isinstance(size, int):
            raise TypeError("size must be an integer")
        if size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size

    def area(self):
        """Return the area of the square."""
        return self.__size ** 2
EOF

cat << 'EOF' > main_3.py
#!/usr/bin/python3
"""Test file for task 3."""

from task_3 import Square

s = Square(4)
print("Area:", s.area())
EOF

# README
cat << 'EOF' > README.md
# Python - Classes and Objects

This project covers foundational Object-Oriented Programming concepts in Python.

## Covered Topics
- What is OOP
- Classes and objects
- Private attributes
- Validation
- Methods
- Area computation

## Usage

Make files executable:
    chmod +x *.py

Run individual tests:
    python3 main_0.py
    python3 main_1.py
    python3 main_2.py
    python3 main_3.py
EOF

chmod +x *.py

echo "All files created successfully."
