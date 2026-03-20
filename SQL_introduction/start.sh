#!/usr/bin/env bash

# Exit on error
set -e

echo "🚀 Initializing SQL project structure..."

# -----------------------------
# Create SQL task files
# -----------------------------

FILES=(
"0-list_databases.sql"
"1-create_database.sql"
"2-delete_database.sql"
"3-list_tables.sql"
"4-first_table.sql"
"5-full_table.sql"
"6-list_values.sql"
"7-insert_value.sql"
"8-count_89.sql"
"9-full_creation.sql"
"10-top_score.sql"
"11-best_score.sql"
"12-no_cheating.sql"
"13-change_class.sql"
"14-average.sql"
"15-groups.sql"
"16-no_link.sql"
)

for file in "${FILES[@]}"; do
    if [ ! -f "$file" ]; then
        touch "$file"
        echo "-- $file" > "$file"
        echo "Created $file"
    else
        echo "$file already exists"
    fi
done

# -----------------------------
# Create README.md
# -----------------------------

cat << 'EOF' > README.md
# SQL - Introduction

## 📚 Project Overview
This project introduces the fundamentals of SQL and relational databases using MySQL.

You will learn how to:
- Create and manage databases
- Define and modify tables
- Query and manipulate data
- Use SQL functions and subqueries

---

## 🧠 Learning Objectives

At the end of this project, you should be able to explain:

- What a database is
- What a relational database is
- What SQL stands for
- What MySQL is
- How to create a database in MySQL
- What DDL and DML are
- How to CREATE or ALTER a table
- How to SELECT data
- How to INSERT, UPDATE, DELETE data
- What subqueries are
- How to use SQL functions

---

## 🗂️ Project Structure

| File | Description |
|------|------------|
| 0-list_databases.sql | Lists all databases |
| 1-create_database.sql | Creates a database |
| 2-delete_database.sql | Deletes a database |
| 3-list_tables.sql | Lists all tables |
| 4-first_table.sql | Creates first table |
| 5-full_table.sql | Shows table structure |
| 6-list_values.sql | Lists all rows |
| 7-insert_value.sql | Inserts a new row |
| 8-count_89.sql | Counts specific values |
| 9-full_creation.sql | Creates and fills table |
| 10-top_score.sql | Displays top scores |
| 11-best_score.sql | Filters best scores |
| 12-no_cheating.sql | Updates data |
| 13-change_class.sql | Removes records |
| 14-average.sql | Calculates average |
| 15-groups.sql | Groups data |
| 16-no_link.sql | Advanced filtering |

---

## ⚙️ Requirements

- Ubuntu 20.04
- MySQL 8.0
- SQL files must end with a new line

---

## ▶️ Usage

Run SQL scripts using:

```bash
cat file.sql | mysql -u root -p