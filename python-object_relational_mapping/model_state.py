#!/usr/bin/python3
"""Module that defines a State class"""


from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

# 1. Create base class for ORM models
Base = declarative_base()


class State(Base):
    """State class that maps to states table"""

    # 2. Table name
    __tablename__ = 'states'

    # 3. Columns
    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(128), nullable=False)
