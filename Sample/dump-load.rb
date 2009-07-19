require 'yaml'

object1 = {
    'name' => 'Ingy dot Net',
    'number' => 42,
    'needs' => [
        'sex',
        'drugs',
        'rock and roll'
    ]
}

yaml1 = YAML::dump(object1)
object2 = YAML::load(yaml1)
yaml2 = YAML::dump(object2)

if yaml1 == yaml2
    print YAML.dump(object1)
else
    raise yaml1 + "!=\n" + yaml2
end
