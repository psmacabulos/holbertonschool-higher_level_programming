# Python – Import & Modules

This project introduces **Python modules**, **imports**, and **command-line arguments**.
It focuses on writing **modular, reusable, and well-structured Python code** while
following the **Holberton coding standards**.

---

## Learning Objectives

At the end of this project, I am able to explain:

- Why Python programming is awesome
- How to import functions from another file
- How to use imported functions
- How to create and use modules
- How to use the built-in function `dir()`
- How to prevent code from being executed when imported
- How to use command line arguments with Python programs
- How to follow Python style guidelines using `pycodestyle`

---

## Requirements

- **Python version:** 3.8
- **OS:** Ubuntu 20.04 LTS
- All files must:
  - Start with `#!/usr/bin/python3`
  - Be executable
  - Follow `pycodestyle` (version 2.8.*)
- No files should print output when imported
- No use of `import *`
- No modification of provided files

---

## Directory Structure

```text
python-import_modules/
├── 0-add.py
├── 1-calculation.py
├── 2-args.py
├── 3-infinite_add.py
├── 4-hidden_discovery.py
├── 5-variable_load.py
├── README.md
```

---

## Task Descriptions

### `0-add.py`
Imports the function `add` from the file `add_0.py` and prints the result of
`1 + 2 = 3`.

### `1-calculation.py`
Imports functions from `calculator_1.py` and performs basic arithmetic operations:
addition, subtraction, multiplication, and division.

### `2-args.py`
Prints the number of command-line arguments passed to the script and lists them,
handling singular and plural grammar correctly.

### `3-infinite_add.py`
Adds all command-line arguments provided to the script and prints the total.

### `4-hidden_discovery.py`
Prints all names defined in the compiled module `hidden_4.pyc`, excluding names
that start with `__`, sorted alphabetically.

### `5-variable_load.py`
Imports the variable `a` from `variable_load_5.py` and prints its value.

---

## Usage

Run a script using:

```bash
python3 <script_name>.py
```

---

## Style Guide

This project follows the **PEP 8 / Pycodestyle** style guide.

Check compliance with:

```bash
pycodestyle *.py
```

---

## Author

Patrick Macabulos  
Holberton School
