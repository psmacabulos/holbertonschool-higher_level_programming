#!/usr/bin/env python3
"""Module creating multiplier function."""

from typing import Callable

def make_multiplier(multiplier: float) -> Callable[[float], float]:
    """Returns function that multiplies."""
    def multiply(x: float) -> float:
        return x * multiplier
    return multiply
