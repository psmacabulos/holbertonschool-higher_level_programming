#!/usr/bin/python3
"""
This module contains a function that divides all elements
of a matrix by a given divisor.
"""


def matrix_divided(matrix, div):
    """
    Divides all elements of a matrix by div.

    Returns a new matrix with elements rounded to 2 decimals.
    """

    # Validate matrix structure
    if (not isinstance(matrix, list) or
            matrix == [] or
            not all(isinstance(row, list) for row in matrix)):
        raise TypeError(
            "matrix must be a matrix (list of lists) "
"of integers/floats"
        )

    # Validate elements inside matrix
    for row in matrix:
        for element in row:
            if not isinstance(element, (int, float)):
                raise TypeError(
            "matrix must be a matrix (list of lists) "
"of integers/floats"
        )

    # Validate equal row sizes
    row_length = len(matrix[0])
    for row in matrix:
        if len(row) != row_length:
            raise TypeError("Each row of the matrix must have the same size")

    # Validate div
    if not isinstance(div, (int, float)):
        raise TypeError("div must be a number")

    if div == 0:
        raise ZeroDivisionError("division by zero")

    # Create new matrix
    new_matrix = []
    for row in matrix:
        new_row = []
        for element in row:
            new_row.append(round(element / div, 2))
        new_matrix.append(new_row)

    return new_matrix
