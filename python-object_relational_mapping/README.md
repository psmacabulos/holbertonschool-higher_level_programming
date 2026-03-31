# Holberton School - Databases & Python (MySQLdb + SQLAlchemy)

## 📘 Overview

This project connects Python with MySQL databases using two approaches:

1. **MySQLdb (mysqlclient)** - Execute raw SQL queries from Python
2. **SQLAlchemy (ORM)** - Use Python objects instead of SQL queries

---

## 🎯 Objectives

- Connect Python to a MySQL database
- Execute SQL queries using Python
- Fetch and manipulate query results
- Understand ORM basics using SQLAlchemy
- Map Python classes to database tables

---

## 🧱 Project Structure

### 🔹 Part 1: MySQLdb (Raw SQL)

- 0-select_states.py → List all states
- 1-filter_states.py → Filter states by name
- 2-my_filter_states.py → Use user input
- 3-my_safe_filter_states.py → Prevent SQL injection
- 4-cities_by_state.py → Join tables
- 5-filter_cities.py → Filter cities by state

---

### 🔹 Part 2: SQLAlchemy (ORM)

- model_state.py → Define State class
- model_city.py → Define City class
- 7-model_state_fetch_all.py → Fetch all states
- 8-model_state_fetch_first.py → Fetch first state
- 9-model_state_filter_a.py → Filter states with 'a'
- 10-model_state_my_get.py → Get state by id

---

## 🚀 How to Use

Run the setup script:

```bash
./start.sh
```

This will:
- Create all required Python files
- Make them executable
- Prepare your workspace

---

## 🧠 Notes

- Focus on understanding **connection flow and queries**
- Do NOT memorize installation steps
- Learn how to debug connection and query errors
- ORM will feel confusing at first — that’s normal

---

## ✅ Requirements

- Python 3
- MySQL 8.0
- mysqlclient (MySQLdb)
- SQLAlchemy 1.4.x

---

## 🔥 Pro Tip

Think in layers:
- Database → stores data
- Driver → connects Python to DB
- ORM → abstracts database into Python objects
