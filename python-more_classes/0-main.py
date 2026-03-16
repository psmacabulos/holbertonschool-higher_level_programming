#!/usr/bin/python3

"""
Test file for task 0
"""

Rectangle = __import__('0-rectangle').Rectangle

# Example scaffold tests
if __name__ == "__main__":
    r = Rectangle()

    print("Rectangle created")
    print("Area:", r.area())
    print("Perimeter:", r.perimeter())
