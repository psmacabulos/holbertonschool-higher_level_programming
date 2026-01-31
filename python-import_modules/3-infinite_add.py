#!/usr/bin/python3
import sys

if __name__ == "__main__":
    arg_count = len(sys.argv) - 1
    sum = 0

    for i in range(1, arg_count + 1):
        sum += int(sys.argv[i])
    print(sum)
