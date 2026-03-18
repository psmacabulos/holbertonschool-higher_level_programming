#!/usr/bin/python3
"""Module to return dictionary description of an object """


def class_to_json(obj):
    """Method to return dictionary"""
    return obj.__dict__
