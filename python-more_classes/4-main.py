#!/usr/bin/python3

"""
Test file for task 4
"""

Rectangle = __import__('4-rectangle').Rectangle

# Example scaffold tests
if __name__ == "__main__":
    r = Rectangle()

    print("Rectangle created")
    print("Area:", r.area())
    print("Perimeter:", r.perimeter())
