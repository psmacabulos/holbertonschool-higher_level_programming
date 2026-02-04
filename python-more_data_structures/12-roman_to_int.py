#!/usr/bin/python3

def roman_to_int(roman_string):
    if not roman_string or not isinstance(roman_string, str):
        return 0
    roman_chart = {
        'I': 1, 'V': 5,
        'X': 10, 'L': 50,
        'C': 100, 'D': 500,
        'M': 1000
    }
    value = 0
    prev_val = 0
    counter = 0
    for s in roman_string:

        if counter > 0 and prev_val < roman_chart[s]:
            value = roman_chart[s] - prev_val
        else:
            value += roman_chart[s]
        prev_val = value
        counter += 1

    return value
