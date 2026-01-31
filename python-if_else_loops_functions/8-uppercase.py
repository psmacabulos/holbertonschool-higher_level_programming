#!/usr/bin/python3
def uppercase(str):
    for i in range(len(str)):
        newascii = ord(str[i])
        if str == "":
            uppercaseLetter = None
        elif not (newascii >= 97 and newascii <= 122):
            uppercaseLetter = str[i]
        else:
            uppercaseLetter = chr(newascii - 32)
        if i == len(str) - 1:
            print("{}".format(uppercaseLetter))
            break
        print("{}".format(uppercaseLetter), end="")
