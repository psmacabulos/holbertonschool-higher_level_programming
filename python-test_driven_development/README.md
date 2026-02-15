# Python - Test-driven development

## Author
Holberton / ALX Student

---

## Project Overview

This project focuses on:

- Writing documentation first
- Writing tests before implementation (TDD)
- Using doctest for interactive testing
- Defensive programming
- Handling edge cases
- Raising precise exceptions

---

## Learning Objectives

- Why Python is powerful
- What interactive tests are
- Why automated testing matters
- How to write docstrings with doctest
- How to write proper module/function documentation
- How to think about edge cases

---

## How to Run Doctest

```
python3 -m doctest -v filename.py
```

---

## Project Structure

Each task includes:

- Task file (e.g., 0-add_integer.py)
- Corresponding main file (0-main.py)
- Executable permissions
- tests/ directory for unit testing when required

---

## TDD Workflow

1. Write docstring + doctests
2. Run doctest (should fail)
3. Implement minimal code
4. Refactor safely

---

## Important Rule

Do not trust the user.
Always validate types and edge cases.
