#!/usr/bin/python3
write_file = __import__('1-write_file').write_file

nb_characters = write_file("my_file_1.txt", "Hello Holberton!")
print(nb_characters)
