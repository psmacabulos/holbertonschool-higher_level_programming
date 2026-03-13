#!/usr/bin/python3
"""Module that defines a Square class"""


class Square:
    """Defines a square with optional size and position"""

    def __init__(self, size=0, position=(0, 0)):
        """Initialize square with optional size and position"""
        self.size = size
        self.position = position

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

    @property
    def position(self):
        """Retrieve position"""
        return self.__position

    @position.setter
    def position(self, value):
        """Set position with validation"""
        if (not isinstance(value, tuple) or
            len(value) != 2 or
            not isinstance(value[0], int) or
            not isinstance(value[1], int) or
                value[0] < 0 or value[1] < 0):
            raise TypeError("position must be a tuple of 2 positive integers")

        self.__position = value

    def area(self):
        """Return the area of the square"""
        return self.__size ** 2

    def my_print(self):
        """Prints in stdout the square with the character # plus position"""
        if self.__size == 0:
            print()
            return

        # vertical offset
        for _ in range(self.__position[1]):
            print()

        # for horizontal offset and #
        for _ in range(self.__size):
            print(" " * self.__position[0] + "#" * self.__size)
