#!/usr/bin/python3
"""Module to list cities of a given state"""

import MySQLdb
import sys


if __name__ == "__main__":
    # 1. Get command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    state_name = sys.argv[4]

    # 2. Connect to MySQL database
    conn = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=database
    )

    # 3. Create a cursor
    cur = conn.cursor()

    # 4. Execute SQL query (JOIN + filter)
    cur.execute(
        "SELECT cities.name "
        "FROM cities "
        "JOIN states ON cities.state_id = states.id "
        "WHERE states.name = %s "
        "ORDER BY cities.id ASC",
        (state_name,)
    )

    # 5. Fetch results
    rows = cur.fetchall()

    # 6. Format and display results
    print(", ".join([row[0] for row in rows]))

    # 7. Close cursor and connection
    cur.close()
    conn.close()
