#!/usr/bin/python3
def magic_string():
    magic_string.ctr += 1
    return ', '.join(['BestSchool'] * magic_string.ctr)
magic_string.ctr = 0
