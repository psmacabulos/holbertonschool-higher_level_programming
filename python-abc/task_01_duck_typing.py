#!/usr/bin/python3
"""Module for Duck Typing"""

from abc import ABC, abstractmethod
import math


class Shape(ABC):
    """Base Class Shape"""

    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass


class Circle(Shape):
    """SubClass Circle"""

    def __init__(self, radius):
        if not isinstance(radius, int):
            raise TypeError("radius should be int")
        if radius < 0:
            raise ValueError("radius must be >= 0")
        self.__radius = radius

    def area(self):
        return math.pi * (self.__radius ** 2)

    def perimeter(self):
        return 2 * math.pi * self.__radius


class Rectangle(Shape):
    """SubClass Rectangle"""

    def __init__(self, width, height):
        if not isinstance(width, int):
            raise TypeError("width must be an integer")

        if not isinstance(height, int):
            raise TypeError("height must be an integer")

        self.__width = width
        self.__height = height

    def area(self):
        return self.__width * self.__height

    def perimeter(self):
        return 2 * (self.__width + self.__height)


def shape_info(arg):
    """Duck typing method"""
    print(f"Area: {arg.area()}")
    print(f"Perimeter: {arg.perimeter()}")

# Test
ball = Circle(4)
court = Rectangle(10, 15)

shape_info(ball)
shape_info(court)