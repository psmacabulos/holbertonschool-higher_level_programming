#!/usr/bin/python3
"""Deletes State objects with name 'Louisiana'"""

import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model_state import Base, State


if __name__ == "__main__":
    # 1. Get command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # 2. Connect to MySQL database
    engine = create_engine(
        f"mysql+mysqldb://{username}:{password}@localhost:3306/{database}",
        pool_pre_ping=True
    )

    # 3. Create session
    Session = sessionmaker(bind=engine)
    session = Session()

    # 4. Query all states named 'Louisiana'
    states = session.query(State).filter(State.name.like('%a%')).all()

    # 5. Delete each state
    for state in states:
        session.delete(state)

    # 6. Commit changes
    session.commit()

    # 7. Close session
    session.close()
