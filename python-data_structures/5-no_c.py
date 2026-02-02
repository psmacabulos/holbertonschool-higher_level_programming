#!/usr/bin/python3
def no_c(my_string):
    new_string = ""
    for string in my_string:
        if string not in "cC":
            new_string += string
    return new_string
