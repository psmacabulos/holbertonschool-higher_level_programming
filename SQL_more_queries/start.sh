#!/bin/bash

# Exit immediately if a command fails
set -e

echo "🚀 Initializing SQL More Queries project..."

# Create task files
touch 0-privileges.sql
touch 1-create_user.sql
touch 2-create_read_user.sql
touch 3-force_name.sql
touch 4-never_empty.sql
touch 5-unique_id.sql
touch 6-states.sql
touch 7-cities.sql
touch 8-cities_of_california_subquery.sql
touch 9-cities_by_state_join.sql
touch 10-genre_id_by_show.sql
touch 11-genre_id_all_shows.sql
touch 12-no_genre.sql
touch 13-count_shows_by_genre.sql
touch 14-my_genres.sql
touch 15-comedy_only.sql
touch 16-shows_by_genre.sql

echo "📄 Creating README.md..."

cat << 'EOF' > README.md
# SQL - More Queries

## 📌 Description
This project focuses on advanced SQL concepts including:
- User and privilege management
- Constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL)
- JOIN operations
- Subqueries
- Data filtering and aggregation

---

## 🎯 Learning Objectives

By completing this project, you should be able to:

- Create and manage MySQL users
- Grant and revoke privileges
- Understand and apply:
  - PRIMARY KEY
  - FOREIGN KEY
  - NOT NULL
  - UNIQUE
- Retrieve data from multiple tables
- Use JOINs effectively (INNER, LEFT, RIGHT)
- Write subqueries
- Use UNION and filtering techniques

---

## 🧱 Project Structure

| File | Description |
|------|------------|
| 0-privileges.sql | List privileges of MySQL users |
| 1-create_user.sql | Create a new MySQL user |
| 2-create_read_user.sql | Create a user with read-only access |
| 3-force_name.sql | Table with NOT NULL constraint |
| 4-never_empty.sql | Table with default values |
| 5-unique_id.sql | Table with UNIQUE constraint |
| 6-states.sql | Create states table |
| 7-cities.sql | Create cities table with foreign key |
| 8-cities_of_california_subquery.sql | Subquery filtering |
| 9-cities_by_state_join.sql | JOIN usage |
| 10-genre_id_by_show.sql | Multiple joins |
| 11-genre_id_all_shows.sql | LEFT JOIN usage |
| 12-no_genre.sql | Handling NULL relationships |
| 13-count_shows_by_genre.sql | Aggregation with GROUP BY |
| 14-my_genres.sql | Filtering with JOIN |
| 15-comedy_only.sql | Specific filtering |
| 16-shows_by_genre.sql | Complex JOIN queries |

---

## ⚙️ Requirements

- MySQL 8.0+
- Ubuntu 20.04 LTS
- SQL scripts must:
  - End with a new line
  - Be executable
  - Follow SQL syntax standards

---

## 🧠 Key Concepts

### 🔐 DCL (Data Control Language)
- GRANT
- REVOKE

### 🧱 Constraints
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE

### 🔗 Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

### 🔍 Subqueries
- Nested SELECT statements

---

## ✍️ Author
Your Name
EOF

# Make all .sql files executable (Holberton style)
chmod +x *.sql

echo "✅ Setup complete!"
echo "📂 Files created:"
ls -1