#!/usr/bin/env python3
"""Module for Basic Pickling"""

import pickle


class CustomObject:
    """Custom Object class to serialize"""

    def __init__(self, name, age, is_student):
        if not isinstance(name, str):
            raise TypeError("name must be a string")
        self.name = name
        if not isinstance(age, int):
            raise TypeError("age must be an integer")
        self.age = age
        if not isinstance(is_student, bool):
            raise TypeError("is_student must be a boolean")

        self.is_student = is_student

    def display(self):
        print(f"Name: {self.name}")
        print(f"Age: {self.age}")
        print(f"Is Student: {self.is_student}")

    def serialize(self, filename):
        """Serialize object to a file"""
        try:
            with open(filename, "wb") as f:
                pickle.dump(self, f)
        except Exception:
            return None

    @classmethod
    def deserialize(cls, filename):
        """Deserialize object from file"""
        try:
            with open(filename, "rb") as f:
                return pickle.load(f)
        except Exception:
            return None
