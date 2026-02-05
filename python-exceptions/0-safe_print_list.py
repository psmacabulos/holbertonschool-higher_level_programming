#!/usr/bin/python3

def safe_print_list(my_list=[], x=0):
    printed = 0
    try:
        for i in range(x):
            print(f"{my_list[i]}", end="")
            printed += 1
        print()
    except ValueError:
        print("Wrong data type")
    except IndexError:
        print()
    return printed
