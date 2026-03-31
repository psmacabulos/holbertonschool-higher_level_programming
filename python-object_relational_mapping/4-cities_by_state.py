#!/usr/bin/python3
"""Module to list cities with their states"""

import MySQLdb
import sys


if __name__ == "__main__":
    # 1. Get command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # 2. Connect to MySQL database
    conn = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=database
    )

    # 3. Create a cursor (to execute SQL queries)
    cur = conn.cursor()

    # 4. Execute SQL query
    cur.execute(
        "SELECT cities.id, cities.name, states.name "
        "FROM cities "
        "JOIN states ON cities.state_id = states.id "
        "ORDER BY cities.id ASC"
    )

    # 5. Fetch results
    rows = cur.fetchall()

    # 6. Display results
    for row in rows:
        print(row)

    # 7. Close cursor and connection
    cur.close()
    conn.close()
