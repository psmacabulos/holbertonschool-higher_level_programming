#!/usr/bin/python3
"""Pascal's Triangle"""


def pascal_triangle(n):
    """Returns a list of lists of integers representing Pascal’s triangle"""

    if n <= 0:
        return []

    triangle = []

    for i in range(n):
        row = [1]

        if i > 0:
            for j in range(1, i):
                value = triangle[i - 1][j - 1] + triangle[i - 1][j]
                row.append(value)
            row.append(1)

        triangle.append(row)

    return triangle
