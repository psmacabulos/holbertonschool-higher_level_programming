#!/usr/bin/python3
BaseGeometry = __import__('7-base_geometry').BaseGeometry
"""Module about BaseGeometry"""


class Rectangle(BaseGeometry):
    """SubClass Rectangle from Base Geometry"""
    def __init__(self, width, height):
        super().__init__()

        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height
