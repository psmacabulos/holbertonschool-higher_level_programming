#!/usr/bin/python3
Square = __import__('5-square').Square

my_square = Square(3)
print(my_square.size)
my_square.size = 6
print(my_square.size)
