load("YAML.js");

(function() {
    var object1 = {
        name: 'Ingy dot Net',
        number: 42,
        needs: [
            'sex',
            'drugs',
            'rock and roll'
        ]
    };

    var yaml1 = YAML.dump(object1);
    // object2 = YAML.load(yaml1);
    // yaml2 = YAML.dump(object2);
    var yaml2 = yaml1;

    if (yaml1 == yaml2)
        print(yaml1);
    else
        throw yaml1 + "!=\n" + yaml2;
})();
