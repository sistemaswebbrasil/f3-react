<?php

require 'vendor/autoload.php';
$f3 = \Base::instance();

$f3->set('CORS.origin', '*');
$f3->set('CORS.headers', '*');
$f3->set('CORS.methods', 'GET,POST,PUT,DELETE,OPTIONS');

$f3->set('DEBUG', 1);
if ((float)PCRE_VERSION<7.9) {
    trigger_error('PCRE version is out of date');
}

/**
 * Configurações
 */
$f3->config('config.ini');

/**
 * Rota de login
 */
$f3->route('POST /login', 'Controller\AuthController->login');

/**
 * Rota genérica
 * Ex: http://apifat.com/f3-raw/api/users/list executa app\Controller\users.php método list
 * * Manter o nome do arquivo em minusculo para coincidir com a url do navegador
 */
$f3->route('GET|POST|PUT|DELETE /@controller/@action/@params', 'Controller\@controller->@action');

/**
 * Controle de erro
 */
$f3->set(
'ONERROR',
    function ($f3) {
        Helpers\Responses::error($f3->get('ERROR.status'), $f3->get('ERROR.code'), $f3->get('DEBUG')== 3 ? $f3->get('ERROR'):'');
    }
);

/**
 * Rota padrão
 */
$f3->route(
    'GET /',
    function ($f3) {
        echo \View::instance()->render('index.html');
    }
);

$f3->run();
