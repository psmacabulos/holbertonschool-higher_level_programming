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

    # Reject NaN and Infinity for a
    if isinstance(a, float):
        if a != a or a in (float("inf"), float("-inf")):
            raise TypeError("a must be an integer")

    # Reject NaN and Infinity for b
    if isinstance(b, float):
        if b != b or b in (float("inf"), float("-inf")):
            raise TypeError("b must be an integer")

    return int(a) + int(b)
