#!/usr/bin/python3
"""Module about BaseGeometry"""


class BaseGeometry:
    """BaseGeometry class"""

    def area(self):
        """area is not implemented"""
        raise Exception("area() is not implemented")

    def integer_validator(self, name, value):
        """validate integer value"""

        if type(value) is not int:
            raise TypeError("{} must be an integer".format(name))

        if value <= 0:
            raise ValueError("{} must be greater than 0".format(name))


class Rectangle(BaseGeometry):
    def __init__(self, width, height):
        super().__init__()

        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height
