
#!/bin/bash
# Script to generate doctest files for Holberton Python Inheritance project

echo "Creating doctest files inside ./tests ..."

mkdir -p tests

# 0-lookup
cat <<'EOF' > tests/0-lookup.txt
>>> lookup = __import__('0-lookup').lookup
>>> class MyClass:
...     def test(self):
...         pass
>>> obj = MyClass()
>>> isinstance(lookup(obj), list)
True
EOF

# 1-my_list
cat <<'EOF' > tests/1-my_list.txt
>>> MyList = __import__('1-my_list').MyList
>>> my_list = MyList()
>>> my_list.append(1)
>>> my_list.append(4)
>>> my_list.append(2)
>>> my_list.append(3)
>>> my_list.append(5)
>>> print(my_list)
[1, 4, 2, 3, 5]
>>> my_list.print_sorted()
[1, 2, 3, 4, 5]
>>> print(my_list)
[1, 4, 2, 3, 5]
EOF

# 2-is_same_class
cat <<'EOF' > tests/2-is_same_class.txt
>>> is_same_class = __import__('2-is_same_class').is_same_class
>>> class A: pass
>>> a = A()
>>> is_same_class(a, A)
True
>>> is_same_class(a, int)
False
EOF

# 3-is_kind_of_class
cat <<'EOF' > tests/3-is_kind_of_class.txt
>>> is_kind_of_class = __import__('3-is_kind_of_class').is_kind_of_class
>>> class A: pass
>>> class B(A): pass
>>> b = B()
>>> is_kind_of_class(b, A)
True
>>> is_kind_of_class(b, B)
True
>>> is_kind_of_class(b, int)
False
EOF

# 4-inherits_from
cat <<'EOF' > tests/4-inherits_from.txt
>>> inherits_from = __import__('4-inherits_from').inherits_from
>>> class A: pass
>>> class B(A): pass
>>> b = B()
>>> inherits_from(b, A)
True
>>> inherits_from(b, B)
False
EOF

# 5-base_geometry
cat <<'EOF' > tests/5-base_geometry.txt
>>> BaseGeometry = __import__('5-base_geometry').BaseGeometry
>>> bg = BaseGeometry()
>>> isinstance(bg, BaseGeometry)
True
EOF

# 6-base_geometry
cat <<'EOF' > tests/6-base_geometry.txt
>>> BaseGeometry = __import__('6-base_geometry').BaseGeometry
>>> bg = BaseGeometry()
>>> bg.area()
Traceback (most recent call last):
...
Exception: area() is not implemented
EOF

# 7-base_geometry
cat <<'EOF' > tests/7-base_geometry.txt
>>> BaseGeometry = __import__('7-base_geometry').BaseGeometry
>>> bg = BaseGeometry()
>>> bg.integer_validator("width", 5)
>>> bg.integer_validator("height", -2)
Traceback (most recent call last):
...
ValueError: height must be greater than 0
EOF

# 8-rectangle
cat <<'EOF' > tests/8-rectangle.txt
>>> Rectangle = __import__('8-rectangle').Rectangle
>>> r = Rectangle(3, 5)
>>> isinstance(r, Rectangle)
True
EOF

# 9-rectangle
cat <<'EOF' > tests/9-rectangle.txt
>>> Rectangle = __import__('9-rectangle').Rectangle
>>> r = Rectangle(3, 5)
>>> print(r)
[Rectangle] 3/5
EOF

# 10-square
cat <<'EOF' > tests/10-square.txt
>>> Square = __import__('10-square').Square
>>> s = Square(5)
>>> isinstance(s, Square)
True
EOF

# 11-square
cat <<'EOF' > tests/11-square.txt
>>> Square = __import__('11-square').Square
>>> s = Square(5)
>>> print(s)
[Square] 5/5
EOF

# 100-my_int
cat <<'EOF' > tests/100-my_int.txt
>>> MyInt = __import__('100-my_int').MyInt
>>> a = MyInt(3)
>>> a == 3
False
>>> a != 3
True
EOF

# 101-add_attribute
cat <<'EOF' > tests/101-add_attribute.txt
>>> add_attribute = __import__('101-add_attribute').add_attribute
>>> class A: pass
>>> a = A()
>>> add_attribute(a, "name", "Holberton")
>>> a.name
'Holberton'
EOF

echo "All doctest files created."
echo "Run tests with:"
echo "python3 -m doctest -v tests/*.txt"
