#!/usr/bin/python3
from_json_string = __import__('4-from_json_string').from_json_string

s = '{"name": "John", "age": 30}'
my_obj = from_json_string(s)
print(my_obj)
