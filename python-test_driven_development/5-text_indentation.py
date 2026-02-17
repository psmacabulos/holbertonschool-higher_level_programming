#!/usr/bin/python3
"""
This module provides a function that prints a text
with proper indentation after specific punctuation.
"""


def text_indentation(text):
    """
    Prints text with two new lines after '.', '?' and ':'.

    Removes leading and trailing spaces from each printed line.
    """

    if not isinstance(text, str):
        raise TypeError("text must be a string")

    i = 0
    while i < len(text):
        char = text[i]

        print(char, end="")

        if char in ".?:":
            print("\n")
            # Skip spaces after punctuation
            i += 1
            while i < len(text) and text[i] == " ":
                i += 1
            continue

        i += 1
