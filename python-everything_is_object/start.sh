#!/usr/bin/env bash

# ============================================
# Holberton Python - Everything is Object Setup
# ============================================
# This script will:
# 1. Create task files (0.txt - 29.txt)
# 2. Generate a professional README.md
#
# Usage:
# chmod +x start.sh
# ./start.sh

set -e

PROJECT_NAME="0x09-python-everything_is_object"

# -------------------------------
# Create task files
# -------------------------------

echo "Creating task files..."

for i in {0..29}
do
    touch "${i}-answer.txt"
done

# -------------------------------
# Create README.md
# -------------------------------

echo "Creating README.md..."

cat << 'EOF' > README.md
# Everything is Object - Python

## 📌 Project Overview

This project explores one of the most fundamental concepts in Python:

> **Everything in Python is an object.**

Understanding how Python handles objects, references, mutability, and identity is critical for writing correct and efficient programs.

This project focuses on reasoning about behavior rather than writing large amounts of code.

---

## 🎯 Learning Objectives

By the end of this project, you should be able to explain:

- What is an object
- The difference between a class and an instance
- Mutable vs immutable objects
- What is a reference
- What is an assignment
- What is an alias
- How to check if two variables are identical
- How to check if two variables reference the same object
- How to get the memory address of an object (`id()`)
- Built-in mutable and immutable types
- How Python passes arguments to functions

---

## 🧠 Key Concepts

### 🔹 Objects and Identity
Every value in Python is stored as an object in memory.
Each object has:
- A type
- A value
- An identity (memory address)

---

### 🔹 Mutable vs Immutable

**Immutable objects (cannot change):**
- int
- float
- str
- tuple
- bool

**Mutable objects (can change):**
- list
- dict
- set

---

### 🔹 Assignment vs Copy

```python
a = [1, 2, 3]
b = a  # same object (alias)
```

To create a real copy:

```python
b = a.copy()
```

---

### 🔹 Identity vs Equality

```python
a == b  # same value

a is b  # same object
```

---

### 🔹 Function Arguments

Python uses **pass-by-object-reference**:
- Mutable objects → can be modified inside functions
- Immutable objects → cannot be modified in-place

---

## 📂 Project Structure

```
.
├── 0.txt
├── 1.txt
├── ...
├── 29.txt
├── README.md
```

Each `.txt` file contains a one-line answer for each task.

---

## ⚙️ Requirements

- Ubuntu 20.04 LTS
- Python 3.8.5
- pycodestyle 2.7
- All files must end with a new line
- Each answer file:
  - One line only
  - No extra spaces
  - No shebang

---

## 🚀 How to Approach This Project

1. Read the question carefully
2. Think before running code
3. Draw memory references if needed
4. Identify:
   - Mutable vs immutable
   - Assignment vs copy
5. Only test after reasoning

---

## ⚠️ Common Pitfalls

- Confusing `=` with copying
- Mixing up `is` vs `==`
- Forgetting lists are mutable
- Not understanding aliasing

---

## 🧪 Example

```python
l = [1, 2, 3]
m = l
l[0] = 'x'

print(m)  # ['x', 2, 3]
```

---

## 📚 Resources

- Python Documentation
- Objects and Values
- Aliasing
- Mutable vs Immutable Types
- List Cloning
- Tuples Behavior

---

## ✍️ Author

Patrick Macabulos

EOF

# -------------------------------
# Done
# -------------------------------

echo ""
echo "✅ Setup complete!"
echo "Files created: 0.txt to 29.txt"
echo "README.md generated"
