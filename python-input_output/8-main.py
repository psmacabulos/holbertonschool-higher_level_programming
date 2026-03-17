#!/usr/bin/python3
class_to_json = __import__('8-class_to_json').class_to_json

class Test:
    def __init__(self):
        self.name = "John"
        self.age = 30

t = Test()
print(class_to_json(t))
