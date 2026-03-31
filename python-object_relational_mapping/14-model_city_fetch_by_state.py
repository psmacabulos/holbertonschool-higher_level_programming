#!/usr/bin/python3
"""Lists all City objects with their State names"""

import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model_state import Base, State
from model_city import City


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

    # 4. Query cities with their states (JOIN)
    results = session.query(City, State)\
        .filter(City.state_id == State.id)\
        .order_by(City.id).all()

    # 5. Display results
    for city, state in results:
        print(f"{state.name}: ({city.id}) {city.name}")

    # 6. Close session
    session.close()
