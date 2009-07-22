<?php

include("spyc.php");

$object1 = array(
    'name' => 'Ingy dot Net',
    'number' => 42,
    'needs' => array(
        'sex',
        'drugs',
        'rock and roll'
    )
);

$yaml1 = Spyc::YAMLDump($object1);
$object2 = Spyc::YAMLLoad($yaml1);
$yaml2 = Spyc::YAMLDump($object2);

if ($yaml1 == $yaml2) {
    echo $yaml1;
}
else {
    throw new Exception($yaml1 . "!=\n" . $yaml2);
}

?>
