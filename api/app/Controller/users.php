<?php
namespace Controller;

use Helpers\Responses;
use Controller\Base\BaseAuthController;
use Controller\Base\BaseController;

/**
 * Classe controladora , nome em minusculo para usar o recurso de rota dinâmica
 */
class Users extends BaseAuthController
{
    public function index()
    {
        Responses::success(['text'=>'Controller UserController método index']);
    }

    public function list()
    {
        Responses::success(['text'=>'NOVO!! Listagem de usuários!']);
    }
}
