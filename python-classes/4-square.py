#!/usr/bin/python3
"""Module that defines a Square class"""


class Square:
    """Defines a square"""

    def __init__(self, size=0):
        """Initialize square with optional size"""
        self.size = size

    @property
    def size(self):
        """Retrieve size"""
        return self.__size

    @size.setter
    def size(self, size):
        """Set size with validation"""
        if not isinstance(size, int):
            raise TypeError("size must be an integer")

        if size < 0:
            raise ValueError("size must be >= 0")

        self.__size = size

    def area(self):
        """Return the area of the square"""
        return self.__size ** 2