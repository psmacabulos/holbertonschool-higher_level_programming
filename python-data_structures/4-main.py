#!/usr/bin/python3

new_in_list = __import__("4-new_in_list").new_in_list

my_list = [1, 2, 3, 4, 5]
new_list = new_in_list(my_list, 3, 9)

print(my_list)
print(new_list)

