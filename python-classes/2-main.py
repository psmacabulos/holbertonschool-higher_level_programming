#!/usr/bin/python3
Square = __import__('2-square').Square

try:
    Square(-1)
except Exception as e:
    print(e)

my_square = Square(4)
print(my_square._Square__size)
