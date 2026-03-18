#!/usr/bin/python3
"""Module to return String"""

import json


def from_json_string(my_string):
    """Method to convert JSON to python object"""
    return json.loads(my_string)
