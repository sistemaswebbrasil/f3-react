<?php
namespace Controller;

use Helpers\Responses;

class UserController extends BaseAuthController //extends SecureRoute
{
    public function index()
    {
        Responses::success(['text'=>'Usuário logado!']);
    }
}
