#!/usr/bin/env python3
"""XML serialization module"""

import xml.etree.ElementTree as ET


def serialize_to_xml(dictionary, filename):
    """Serialize dictionary to XML file"""
    try:
        root = ET.Element("data")

        for key, value in dictionary.items():
            child = ET.SubElement(root, key)
            child.text = str(value)

        tree = ET.ElementTree(root)
        tree.write(filename)

        return True
    except Exception:
        return False


def deserialize_from_xml(filename):
    """Deserialize XML file to dictionary"""
    try:
        tree = ET.parse(filename)
        root = tree.getroot()

        data = {}
        for child in root:
            data[child.tag] = child.text

        return data
    except Exception:
        return None
