#!/usr/bin/python3
"""Module for Dragon using mixins"""


class SwimMixin:
    """Mixin for swimming capability"""

    def swim(self):
        print("The creature swims!")


class FlyMixin:
    """Mixin for flying capability"""

    def fly(self):
        print("The creature flies!")


class Dragon(SwimMixin, FlyMixin):
    """Dragon class combining multiple behaviors"""

    def roar(self):
        print("The dragon roars!")
