#!/usr/bin/python3
"""Test file for task 2."""

from task_2 import Square

try:
    Square(-1)
except Exception as e:
    print(e)

s = Square(3)
print(s._Square__size)
