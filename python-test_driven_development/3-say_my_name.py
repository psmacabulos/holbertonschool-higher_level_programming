#!/usr/bin/python3
"""
This module provides a function that prints a formatted
string with a person's first and last name.
"""


def say_my_name(first_name, last_name=""):
    """
    Prints the full name in the format:
    My name is <first_name> <last_name>
    """

    if not isinstance(first_name, str):
        raise TypeError("first_name must be a string")

    if not isinstance(last_name, str):
        raise TypeError("last_name must be a string")

    print("My name is {} {}".format(first_name, last_name))
