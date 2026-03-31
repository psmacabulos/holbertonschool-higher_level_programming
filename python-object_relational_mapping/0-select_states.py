#!/usr/bin/python3
"""Module to list contents of a table """


import MySQLdb
import sys

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    conn = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=database
    )

    # Create a cursor
    cur = conn.cursor()

    # Execute the query
    cur.execute("SELECT * FROM states ORDER BY id ASC")

    # Fetch the result
    rows = cur.fetchall()

    for row in rows:
        print(row)

    # Close the connection
    cur.close()
    conn.close()
