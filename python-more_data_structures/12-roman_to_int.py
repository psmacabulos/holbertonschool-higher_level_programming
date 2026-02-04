#!/usr/bin/python3


def roman_to_int(roman_string):
    if not roman_string or isinstance(roman_string, str):
        return 0
    roman_chart = {'I': 1, 'V': 5, 'X': 10, 'L':50, 'C':100, 'D':500, 'M':1000 }
    value = 0;
    
    for s in roman_string:
       value += roman_chart[s]
