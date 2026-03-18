#!/usr/bin/python3
"""Module to return JSON"""

import json


def to_json_string(obj):
    """Method to convert string to JSON"""
    return json.dumps(obj)
