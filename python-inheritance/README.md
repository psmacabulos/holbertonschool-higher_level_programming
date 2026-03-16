# Python - Inheritance

## Description

This project introduces **Inheritance in Python**, a fundamental concept
in **Object-Oriented Programming (OOP)**.\
Inheritance allows a class to reuse attributes and methods from another
class, creating hierarchical relationships between classes.

Through this project, you will practice creating subclasses, overriding
methods, validating types, and using built‑in Python tools related to
class inheritance.

------------------------------------------------------------------------

# Learning Objectives

At the end of this project, you should be able to explain the following
without external help:

-   What is a **superclass**, **base class**, or **parent class**
-   What is a **subclass**
-   How to **list all attributes and methods** of a class or instance
-   When an instance can have **new attributes**
-   How to **inherit a class from another class**
-   How to define a class with **multiple base classes**
-   What is the **default class** every class inherits from
-   How to **override methods or attributes**
-   Which attributes or methods are inherited by subclasses
-   The **purpose of inheritance**
-   When and how to use:
    -   `isinstance()`
    -   `issubclass()`
    -   `type()`
    -   `super()`

------------------------------------------------------------------------

# Requirements

-   Python 3.8+
-   Ubuntu 20.04 LTS
-   All files must end with a new line
-   The first line of all Python files must be:

``` python
#!/usr/bin/python3
```

Files must be executable:

``` bash
chmod +x *.py
```

All code must follow **PEP8 (pycodestyle)** style guidelines.

------------------------------------------------------------------------

# Project Structure

Typical structure of the project:

    python-inheritance/
    │
    ├── 0-lookup.py
    ├── 1-my_list.py
    ├── 2-is_same_class.py
    ├── 3-is_kind_of_class.py
    ├── 4-inherits_from.py
    ├── 5-base_geometry.py
    ├── 6-base_geometry.py
    ├── 7-base_geometry.py
    ├── 8-rectangle.py
    ├── 9-rectangle.py
    ├── 10-square.py
    ├── 11-square.py
    ├── 100-my_int.py
    ├── 101-add_attribute.py
    │
    ├── 0-main.py
    ├── 1-main.py
    ├── ...
    │
    └── README.md

------------------------------------------------------------------------

# Tasks Overview

## 0. Lookup

Write a function that returns the list of available attributes and
methods of an object.

Concept used: - `dir()`

------------------------------------------------------------------------

## 1. My List

Create a class `MyList` that inherits from `list` and prints the list
sorted.

Concept used: - Subclassing built-in types

------------------------------------------------------------------------

## 2. Exact Same Object

Function that checks if an object is **exactly an instance of a
specified class**.

Concept used: - `type()`

------------------------------------------------------------------------

## 3. Same Class or Inherited

Function that checks if an object is an instance of a class **or
inherited from it**.

Concept used: - `isinstance()`

------------------------------------------------------------------------

## 4. Only Subclass

Function that checks if an object is **an instance of a subclass** of a
class.

Concept used: - `issubclass()`

------------------------------------------------------------------------

## 5--7. BaseGeometry

Create a base class and progressively improve it by adding:

-   methods
-   validation logic
-   exception handling

Concept used: - abstract behavior - inheritance structure

------------------------------------------------------------------------

## 8--9. Rectangle

Create a `Rectangle` class that inherits from `BaseGeometry`.

Concept used: - calling parent validation - `super()`

------------------------------------------------------------------------

## 10--11. Square

Create a `Square` class that inherits from `Rectangle`.

Concept used: - multi-level inheritance

------------------------------------------------------------------------

## 100. MyInt

Create a class that **reverses equality operators**.

Concept used: - operator behavior override

------------------------------------------------------------------------

## 101. Add Attribute

Create a function that **adds new attributes dynamically** to objects.

Concept used: - dynamic attributes - `setattr()`

------------------------------------------------------------------------

# Important Python Concepts

### Superclass / Parent Class

A class whose attributes and methods are inherited.

Example:

``` python
class Animal:
    pass
```

------------------------------------------------------------------------

### Subclass

A class that inherits from another class.

``` python
class Dog(Animal):
    pass
```

------------------------------------------------------------------------

### Default Parent Class

All Python classes inherit from:

    object

------------------------------------------------------------------------

### Method Overriding

A subclass can redefine a method from the parent.

``` python
class Dog(Animal):
    def speak(self):
        print("Bark")
```

------------------------------------------------------------------------

### super()

Used to call methods from the parent class.

``` python
super().__init__()
```

------------------------------------------------------------------------

# Author

Holberton School --- Python Curriculum
