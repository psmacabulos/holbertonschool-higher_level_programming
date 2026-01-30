#!/usr/bin/python3
import random
number = random.randint(-10000, 10000)
last_digit = abs(number) % 10
str = "and is 0"
if number < 0:
    last_digit = -last_digit
    str = "and is less than 6 and not 0"
if last_digit > 0:
    str = "and is greater than 5"
print(f"Last digit of {number} is {last_digit} {str}")
