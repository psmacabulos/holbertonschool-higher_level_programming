#!/usr/bin/python3
"""This module is about reading file in Python"""


def read_file(filename=""):
    """Read file function"""

    with open(filename, "r", encoding="utf-8") as f:
        content = f.read()
        print(content)
