#!/usr/bin/env python3
"""Module for element lengths."""

from typing import Iterable, Sequence, List, Tuple

def element_length(lst: Iterable[Sequence]) -> List[Tuple[Sequence, int]]:
    """Returns list of tuples with element and length."""
    return [(i, len(i)) for i in lst]
