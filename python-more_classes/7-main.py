#!/usr/bin/python3

"""
Test file for task 7
"""

Rectangle = __import__('7-rectangle').Rectangle

# Example scaffold tests
if __name__ == "__main__":
    r = Rectangle()

    print("Rectangle created")
    print("Area:", r.area())
    print("Perimeter:", r.perimeter())
