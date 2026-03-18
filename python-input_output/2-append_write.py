#!/usr/bin/python3
"""Module to write to a file"""


def append_write(filename="", text=""):
    """Method to append to a file"""

    with open(filename, "a", encoding='utf-8') as f:
        return f.write(text)
