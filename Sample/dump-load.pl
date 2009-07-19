use YAML;

$object1 = {
    'name' => 'Ingy dot Net',
    'number' => 42,
    'needs' => [
        'sex',
        'drugs',
        'rock and roll'
    ]
};

$yaml1 = Dump($object1);
$object2 = Load($yaml1);
$yaml2 = Dump($object2);

if ($yaml1 eq $yaml2) {
    print $yaml1;
}
else {
    die $yaml1 . "!=\n" . $yaml2
}
