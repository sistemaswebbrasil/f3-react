<?php

require 'vendor/autoload.php';

use Helpers\Responses;

$f3 = \Base::instance();

$f3->set('DEBUG', 1);
if ((float)PCRE_VERSION<7.9) {
    trigger_error('PCRE version is out of date');
}

$f3->config('config.ini');

$f3->set('AUTOLOAD', 'app/');


$f3->set(
'ONERROR',
    function ($f3) {
        Responses::error($f3->get('ERROR.status'), $f3->get('ERROR.code'), $f3->get('DEBUG')== 3 ? $f3->get('ERROR'):'');
    }
);


$f3->route('POST /login', 'Controller\AuthController->login');
$f3->route('GET  /users', 'Controller\UserController->index');


$f3->route(
    'GET /',
    function ($f3) {
        echo \View::instance()->render('index.html');
    }
);

$f3->run();
