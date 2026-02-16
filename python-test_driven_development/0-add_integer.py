#!/usr/bin/python3
"""
This module contains a function that adds two integers.

The function ensures that inputs are integers or floats.
"""

def add_integer(a, b=98):
    """
    Adds two integers.
    """

    if not isinstance(a, (int, float)):
        raise TypeError("a must be an integer")

    if not isinstance(b, (int, float)):
        raise TypeError("b must be an integer")

    if isinstance(a, float):
        if a != a or abs(a) == float("inf"):
            raise TypeError("a must be an integer")

    if isinstance(b, float):
        if b != b or abs(b) == float("inf"):
            raise TypeError("b must be an integer")

    return int(a) + int(b)
