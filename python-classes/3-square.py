#!/usr/bin/python3
"""Module that defines a Square with area method."""

class Square:
    """Defines a square with area capability."""

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
