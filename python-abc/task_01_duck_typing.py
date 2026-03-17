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
        self.__radius = radius

    def area(self):
        return math.pi * (self.__radius ** 2)

    def perimeter(self):
        return 2 * math.pi * self.__radius


class Rectangle(Shape):
    """SubClass Rectangle"""

    def __init__(self, width, height):
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
