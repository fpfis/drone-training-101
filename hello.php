<?php

require __DIR__.'/vendor/autoload.php';


use Symfony\Component\Yaml\Yaml;

$array = array(
    'foo' => 'bar',
    'bar' => array('foo' => 'bar', 'bar' => 'baz'),
);

echo Yaml::dump($array);
