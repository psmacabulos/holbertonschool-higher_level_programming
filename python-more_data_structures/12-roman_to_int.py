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

    total = 0
    prev_val = 0

    for char in roman_string:
        curr_val = roman_chart[char]

        if curr_val > prev_val:
            total += curr_val - 2 * prev_val
        else:
            total += curr_val

        prev_val = curr_val

    return total
