import yaml

object1 = {
    'name': 'Ingy dot Net',
    'number': 42,
    'needs': [
        'sex',
        'drugs',
        'rock and roll'
    ]
}

yaml1 = yaml.dump(object1)
object2 = yaml.load(yaml1)
yaml2 = yaml.dump(object2)

if yaml1 == yaml2:
    print yaml1
else:
    raise Exception(yaml1 + "!=\n" + yaml2)
