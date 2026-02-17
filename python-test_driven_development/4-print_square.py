#!/usr/bin/python3
"""
This module provides a function that square a given
length and prints the character #.
"""


def print_square(size):
    """
    Prints the square of a given size
    
    Validates input and raises appropriate
    exceptions when conditions are not met
    """

    if not isinstance(size, int):
        raise TypeError("size must be an integer")
    if size < 0:
        raise ValueError("size must be >= 0")
    try:
        square = size
        for row in range(square):
            for col in range(square):
                print(f"#", end='')
            print()
        
    except Exception:
        print((Exception))