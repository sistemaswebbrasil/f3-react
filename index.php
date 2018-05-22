<?php

require 'vendor/autoload.php';
$f3 = \Base::instance();
$f3->route(
    'GET /',
    function () {
        echo 'Hello, world!';
    }
);

$f3->route(
    'GET /about',
    function () {
        echo 'Donations go to a local charity... us!';
    }
);


$f3->run();
