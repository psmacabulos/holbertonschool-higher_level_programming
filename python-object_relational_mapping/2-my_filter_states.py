#!/usr/bin/python3
"""Module to filter states by user input"""


import MySQLdb
import sys


if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    state_name = sys.argv[4]

    # Create the connection
    conn = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=database
    )

    # Make a cursor
    cur = conn.cursor()

    # Create a query then execute
    query = "SELECT * FROM states WHERE name = '{}'" \
            " ORDER BY id ASC".format(state_name)
    cur.execute(query)

    # Retrieve the results
    rows = cur.fetchall()

    for row in rows:
        print(row)

    # Close the connections
    cur.close()
    conn.close()
