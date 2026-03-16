#!/usr/bin/python3
"""
Task 6: Rectangle
Holberton - More Classes and Objects
"""


class Rectangle:
    """Defines a Rectangle Class"""

    def __init__(self, width=0, height=0):
        self.width = width
        self.height = height

    def __str__(self):
        """Return the string representation of the rectangle using '#'"""
        if self.width == 0 or self.height == 0:
            return ""

        rows = []
        for _ in range(self.height):
            rows.append("#" * self.width)

        return "\n".join(rows)

    def __repr__(self):
        """Return the object representation"""
        return f"Rectangle({self.width}, {self.height})"

    def __del__(self):
        """Delete the rectangle instance"""
        print("Bye rectangle...")

    @property
    def width(self):
        """Retrieves the width"""
        return self.__width

    @width.setter
    def width(self, value):
        """Set and validates the width"""
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value

    @property
    def height(self):
        """Retrieves the height"""
        return self.__height

    @height.setter
    def height(self, value):
        """Set and validates the height"""
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value

    def area(self):
        """Return the area of the rectangle"""
        return self.width * self.height

    def perimeter(self):
        """Return the perimeter of the rectangle"""
        if self.width == 0 or self.height == 0:
            return 0
        return (self.width * 2) + (self.height * 2)
