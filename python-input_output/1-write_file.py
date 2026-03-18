#!/usr/bin/python3
"""Module to write to a file"""


def write_file(filename="", text=""):
    """Method to write to a file"""

    with open(filename, "w", encoding='utf-8') as f:
        return f.write(text)
