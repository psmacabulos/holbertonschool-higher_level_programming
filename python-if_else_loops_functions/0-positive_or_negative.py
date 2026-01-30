#!/usr/bin/python3
import random
number = random.randint(-10, 10)
negative = " is negative"
zero = " is zero"
positive = " is positive"
if number > 0:
    print(f"{number}{positive}")
elif number == 0:
    print(f"{number}{zero}")
else:
    print(f"{number}{negative}")
