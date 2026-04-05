"""Module to replace placeholder from an object"""


def generate_invitations(template, attendees):
    """Function to create invitations"""
    # Verify the input and exit gracefully
    if not isinstance(template, str):
        print("Template must be a string")
        return

    if not isinstance(attendees, list):
        print("Attendess must be a list")
        return

    if not all(isinstance(a, dict) for a in attendees):
        print("Attendees must be a list of dictionaries")
        return
    if template == '':
        print("Template is empty, no output files generated.")
        return
    if not attendees:
        print("No data provided, no output files generated.")
        return

    # Process attendees

    for i, person in enumerate(attendees, start=1):
        # Replace the placeholders with the correct value while looping
        output = template.replace("{name}",
                                  str(person.get("name") or "N/A"))
        output = output.replace("{event_title}",
                                str(person.get("event_title") or "N/A"))
        output = output.replace("{event_date}",
                                str(person.get("event_date") or "N/A"))
        output = output.replace("{event_location}",
                                str(person.get("event_location") or "N/A"))

        # Create the file
        filename = f"output_{i}.txt"
        try:
            with open(filename, "w", encoding='utf-8') as f:
                f.write(output)
        except Exception as e:
            print(f"Error writing file {filename}: {e}")
