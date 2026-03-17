#!/usr/bin/env python3
"""Module about Abstract Class"""
from abc import ABC, abstractmethod


class Animal(ABC):
    """Defines the animal class"""

    @abstractmethod
    def sound(self):
        """Sound method for animal class"""
        pass


class Dog(Animal):
    """Subclass Dog that inherits the Abstract Class Animal"""
    def sound(self):
        return "Bark"


class Cat(Animal):
    """Subclass Dog that inherits the Abstract Class Animal"""
    def sound(self):
        return "Meow"
