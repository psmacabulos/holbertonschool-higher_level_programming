#!/usr/bin/python3
"""Gets a State object by name"""

import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model_state import Base, State


if __name__ == "__main__":
    # 1. Get command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    state_name = sys.argv[4]

    # 2. Connect to MySQL database
    engine = create_engine(
        f"mysql+mysqldb://{username}:{password}@localhost:3306/{database}",
        pool_pre_ping=True
    )

    # 3. Create session
    Session = sessionmaker(bind=engine)
    session = Session()

    # 4. Query for exact match
    state = session.query(State)\
        .filter(State.name == state_name)\
        .first()

    # 5. Display result
    if state:
        print(state.id)
    else:
        print("Not found")

    # 6. Close session
    session.close()
