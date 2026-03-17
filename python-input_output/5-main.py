#!/usr/bin/python3
save_to_json_file = __import__('5-save_to_json_file').save_to_json_file

my_obj = { 'name': "John", 'age': 30 }
save_to_json_file(my_obj, "my_file_5.json")
