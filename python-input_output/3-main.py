#!/usr/bin/python3
to_json_string = __import__('3-to_json_string').to_json_string

my_obj = { 'name': "John", 'age': 30 }
s = to_json_string(my_obj)
print(s)
