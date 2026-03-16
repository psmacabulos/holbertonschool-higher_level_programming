#!/usr/bin/python3
"""Module for Rectangle"""

Rectangle = __import__('9-rectangle').Rectangle


class Square(Rectangle):
    """Class for creating a square"""

    def __init__(self, size):
        """Initialize size"""
        self.integer_validator("size", size)
        super().__init__(size, size)
        self.__size = size

    def area(self):
        """Return the square area"""
        return self.__size ** 2
