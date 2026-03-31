#!/usr/bin/python3
"""Update a State object"""

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

    # 4. Query the state with the id of 2
    state = session.query(State).filter_by(id=2).first()

    # 5. Update the name
    if state:
        state.name = "New Mexico"

    # 6. Commit changes (write to DB)
    session.commit()

    # 7. Close session
    session.close()
