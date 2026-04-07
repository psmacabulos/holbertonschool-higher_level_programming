#!/usr/bin/env python3
"""Module converting to key-value tuple."""

from typing import Tuple

def to_kv(k: str, v: int) -> Tuple[str, float]:
    """Returns tuple with square of value."""
    return (k, float(v * v))
