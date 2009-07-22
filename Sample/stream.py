import yaml

stream = """\
# Example Events

---
foo: &list
- hello
- world
bar: *list
--- Goodbye
"""

for event in yaml.parse(stream):
    print event
