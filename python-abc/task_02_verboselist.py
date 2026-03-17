#!/usr/bin/python3
"""Module about Extending builtin methods"""


class VerboseList(list):
    """Extended list class"""

    def append(self, object):
        super().append(object)
        print(f"Added [{object}] to the list.")

    def extend(self, iterable):
        super().extend(iterable)
        print(f"Extended the list with [{len(iterable)}] items.")

    def remove(self, value):
        print(f"Removed [{value}] from the list.")
        super().remove(value)

    def pop(self, item=-1):
        print(f"Popped [{self[item]}] from the list.")
        super().pop(item)
