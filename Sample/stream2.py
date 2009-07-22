import yaml
from StringIO import StringIO

stream = """\
---
foo:
- hello
- 5
bar: 7
--- 9
"""

dumper = yaml.dumper.Dumper(StringIO())

for event in yaml.parse(stream):
    if type(event) == yaml.events.ScalarEvent:
        try:
            event.value = str(int(event.value) ** 3)
        except:
            pass
    dumper.emit(event)

print dumper.stream.getvalue()
