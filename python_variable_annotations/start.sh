#!/usr/bin/env bash
set -e

echo "🚀 Creating Holberton Type Annotation task files..."

# 0-add.py
cat <<EOF > 0-add.py
#!/usr/bin/env python3
"""Module for adding two floats."""

def add(a: float, b: float) -> float:
    """Returns the sum of two floats."""
    return a + b
EOF
chmod +x 0-add.py

# 1-concat.py
cat <<EOF > 1-concat.py
#!/usr/bin/env python3
"""Module for concatenating strings."""

def concat(str1: str, str2: str) -> str:
    """Returns concatenated string."""
    return str1 + str2
EOF
chmod +x 1-concat.py

# 2-floor.py
cat <<EOF > 2-floor.py
#!/usr/bin/env python3
"""Module for flooring a float."""
import math

def floor(n: float) -> int:
    """Returns the floor of a float."""
    return math.floor(n)
EOF
chmod +x 2-floor.py

# 3-to_str.py
cat <<EOF > 3-to_str.py
#!/usr/bin/env python3
"""Module for converting float to string."""

def to_str(n: float) -> str:
    """Returns string representation of float."""
    return str(n)
EOF
chmod +x 3-to_str.py

# 4-define_variables.py
cat <<EOF > 4-define_variables.py
#!/usr/bin/env python3
"""Module defining annotated variables."""

a: int = 1
pi: float = 3.14
i_understand_annotations: bool = True
school: str = "Holberton"
EOF
chmod +x 4-define_variables.py

# 5-sum_list.py
cat <<EOF > 5-sum_list.py
#!/usr/bin/env python3
"""Module for summing a list of floats."""

from typing import List

def sum_list(input_list: List[float]) -> float:
    """Returns sum of list of floats."""
    return sum(input_list)
EOF
chmod +x 5-sum_list.py

# 6-sum_mixed_list.py
cat <<EOF > 6-sum_mixed_list.py
#!/usr/bin/env python3
"""Module for summing mixed list."""

from typing import List, Union

def sum_mixed_list(mxd_lst: List[Union[int, float]]) -> float:
    """Returns sum of mixed list."""
    return float(sum(mxd_lst))
EOF
chmod +x 6-sum_mixed_list.py

# 7-to_kv.py
cat <<EOF > 7-to_kv.py
#!/usr/bin/env python3
"""Module converting to key-value tuple."""

from typing import Tuple

def to_kv(k: str, v: int) -> Tuple[str, float]:
    """Returns tuple with square of value."""
    return (k, float(v * v))
EOF
chmod +x 7-to_kv.py

# 8-make_multiplier.py
cat <<EOF > 8-make_multiplier.py
#!/usr/bin/env python3
"""Module creating multiplier function."""

from typing import Callable

def make_multiplier(multiplier: float) -> Callable[[float], float]:
    """Returns function that multiplies."""
    def multiply(x: float) -> float:
        return x * multiplier
    return multiply
EOF
chmod +x 8-make_multiplier.py

# 9-element_length.py
cat <<EOF > 9-element_length.py
#!/usr/bin/env python3
"""Module for element lengths."""

from typing import Iterable, Sequence, List, Tuple

def element_length(lst: Iterable[Sequence]) -> List[Tuple[Sequence, int]]:
    """Returns list of tuples with element and length."""
    return [(i, len(i)) for i in lst]
EOF
chmod +x 9-element_length.py

# README.md
cat <<EOF > README.md
# Python - Type Annotations

This project covers Python type annotations, function signatures, and static typing using mypy.

## Learning Objectives
- Type annotations in Python 3
- Function signatures and variable typing
- Duck typing
- Static type checking with mypy

## Requirements
- Python 3.9
- pycodestyle 2.5
- mypy

## Usage
pycodestyle .
mypy .
EOF

echo "✅ All files (0–9) and README created successfully."
