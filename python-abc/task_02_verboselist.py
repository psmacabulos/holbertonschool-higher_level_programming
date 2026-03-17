#!/usr/bin/python3
"""Module about Extending builtin methods"""


class VerboseList(list):
    """Extended list class"""

    def append(self, object):
        """Append method"""
        super().append(object)
        print(f"Added [{object}] to the list.")

    def extend(self, iterable):
        """Extend method"""
        super().extend(iterable)
        print(f"Extended the list with [{len(iterable)}] items.")

    def remove(self, value):
        """Remove method"""
        print(f"Removed [{value}] from the list.")
        super().remove(value)

    def pop(self, item=-1):
        """Pop Method"""
        value = super().pop(item)
        print(f"Popped [{value}] from the list.")
        return value
