#!/bin/bash
# Setup script for Python ABC (Abstract Classes) project

echo "Creating project structure..."

# Create task files
touch task_00_abc.py
touch task_01_duck_typing.py
touch task_02_verboselist.py
touch task_03_countediterator.py
touch task_04_flyingfish.py
touch task_05_dragon.py

# Create corresponding main test files
touch 0-main.py
touch 1-main.py
touch 2-main.py
touch 3-main.py
touch 4-main.py
touch 5-main.py

# Create README.md with content
cat << 'EOF' > README.md
# Python OOP - Abstract Classes, Interfaces, and Advanced Concepts

## Overview
This project explores advanced Object-Oriented Programming concepts in Python:

- Abstract Base Classes (ABC)
- Duck Typing
- Subclassing built-in types
- Custom iterators
- Multiple inheritance
- Mixins

## Files

- task_00_abc.py → Abstract Classes
- task_01_duck_typing.py → Duck Typing
- task_02_verboselist.py → List subclassing
- task_03_countediterator.py → Iterator protocol
- task_04_flyingfish.py → Multiple inheritance
- task_05_dragon.py → Mixins

## Setup

chmod +x start.sh
./start.sh

## Notes

- Use @abstractmethod for contracts
- Use super() when extending behavior
- Think in terms of behavior, not just structure
EOF

echo "Done! Files created:"
ls -1
