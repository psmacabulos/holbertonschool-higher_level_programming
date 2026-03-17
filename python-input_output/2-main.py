#!/usr/bin/python3
append_write = __import__('2-append_write').append_write

nb_characters = append_write("my_file_2.txt", "Holberton School is cool!")
print(nb_characters)
