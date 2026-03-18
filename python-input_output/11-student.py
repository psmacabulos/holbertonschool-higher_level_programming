#!/usr/bin/python3
"""Student class module"""


class Student:
    """Defines a student"""

    def __init__(self, first_name, last_name, age):
        """Initialize student"""
        self.first_name = first_name
        self.last_name = last_name
        self.age = age

    def to_json(self, attrs=None):
        """Returns dictionary representation of Student"""

        if isinstance(attrs, list) and all(isinstance(i, str) for i in attrs):
            result = {}
            for attr in attrs:
                if hasattr(self, attr):
                    result[attr] = getattr(self, attr)
            return result

        return self.__dict__

    def reload_from_json(self, json):
        """Replaces all attributes of the instance"""

        for key, value in json.items():
            setattr(self, key, value)
