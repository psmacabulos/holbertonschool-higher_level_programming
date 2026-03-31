#!/usr/bin/python3
"""Lists all State objects from the database"""

import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model_state import Base, State


if __name__ == "__main__":
    # 1. Get command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # 2. Connect to MySQL database (create engine)
    engine = create_engine(
        f"mysql+mysqldb://{username}:{password}@localhost:3306/{database}",
        pool_pre_ping=True
    )

    # 3. Create session
    Session = sessionmaker(bind=engine)
    session = Session()

    # 4. Query all State objects ordered by id
    states = session.query(State).order_by(State.id).all()

    # 5. Display results
    for state in states:
        print(f"{state.id}: {state.name}")

    # 6. Close session
    session.close()
