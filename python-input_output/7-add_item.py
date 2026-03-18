#!/usr/bin/python3
"""Module for reading arguments"""

import sys
import json

save_to_json = __import__("5-save_to_json_file").save_to_json_file
load_from_json = __import__("6-load_from_json_file").load_from_json_file


def load_from_json_file(filename):
    """Method to add the sys argument to file"""
    my_list = load_from_json(filename)
    if my_list == []:
        my_list.append(sys.argv[1:])
    else:
        my_list.extend(sys.argv[1:])
    save_to_json(my_list, filename)
