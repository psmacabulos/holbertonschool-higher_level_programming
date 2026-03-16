#!/usr/bin/python3
"""Module for Rectangle"""

BaseGeometry = __import__('7-base_geometry').BaseGeometry


class Rectangle(BaseGeometry):
    """Rectangle class that inherits from BaseGeometry"""

    def __init__(self, width, height):
        """Initialize rectangle"""

        self.integer_validator("width", width)
        self.integer_validator("height", height)

        self.__width = width
        self.__height = height

    def area(self):
        """Return area of rectangle"""
        return self.__width * self.__height

    def __str__(self):
        """Return rectangle description"""
        return f"[Rectangle] {self.__width}/{self.__height}"

    def __repr__(self):
        """Print rectangle description"""
        print(f"[Rectangle] {self.__width}/{self.__height}")
