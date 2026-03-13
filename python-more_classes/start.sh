#!/usr/bin/env bash
# Holberton Python - More Classes and Objects
# Scaffold generator
# Run inside your project directory:  bash start.sh

echo "Creating project scaffold..."

# -----------------------------
# Create README
# -----------------------------
cat << 'EOF' > README.md
# Holberton - Python More Classes and Objects

## Project Overview
This project explores deeper Object-Oriented Programming concepts in Python.

Topics covered:
- Class attributes vs instance attributes
- __str__ and __repr__
- classmethod and staticmethod
- Object lifecycle (__init__, __del__)
- Encapsulation
- Attribute lookup

Each task file contains only a scaffold outline to help start implementation.

EOF


# -----------------------------
# Function to generate task files
# -----------------------------
create_task () {

TASK=$1

cat << EOF > ${TASK}-rectangle.py
#!/usr/bin/python3
"""
Task ${TASK}: Rectangle
Holberton - More Classes and Objects
"""


class Rectangle:
    """
    Outline for Rectangle class.

    Requirements for this task may include:
    - width and height attributes
    - validation of attributes
    - class attributes
    - instance methods
    - special methods (__str__, __repr__)
    """

    def __init__(self, width=0, height=0):
        """
        Initialize Rectangle instance.

        Args:
            width (int): width of rectangle
            height (int): height of rectangle
        """
        # TODO: implement initialization
        pass


    def area(self):
        """
        Compute area of rectangle.
        """
        # TODO
        pass


    def perimeter(self):
        """
        Compute perimeter of rectangle.
        """
        # TODO
        pass
EOF

cat << EOF > ${TASK}-main.py
#!/usr/bin/python3

"""
Test file for task ${TASK}
"""

Rectangle = __import__('${TASK}-rectangle').Rectangle

# Example scaffold tests
if __name__ == "__main__":
    r = Rectangle()

    print("Rectangle created")
    print("Area:", r.area())
    print("Perimeter:", r.perimeter())
EOF

chmod +x ${TASK}-rectangle.py
chmod +x ${TASK}-main.py

echo "Created task ${TASK}"
}


# -----------------------------
# Generate tasks
# -----------------------------

create_task 0
create_task 1
create_task 2
create_task 3
create_task 4
create_task 5
create_task 6
create_task 7
create_task 8
create_task 9

echo ""
echo "Scaffold complete."
echo "Files created:"
echo " - 0..9-rectangle.py"
echo " - 0..9-main.py"
echo " - README.md"
echo ""
echo "You can now begin implementing each task."
