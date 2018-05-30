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
        $users = $this->db->exec('SELECT id,email,name,username FROM users');


        Responses::success(['text'=>'Controller UserController método index']);
    }

    public function list()
    {
        $users = $this->db->exec('SELECT id,email,name,username FROM users');
        Responses::success($users);
    }

    public function show()
    {
        try {
            $id = $this->f3->get('PARAMS.params');
            $user = $this->db->exec('SELECT * FROM users where id=:id ', [':id'=>$id ])[0];
            if (!empty($user)) {
                Responses::success($user);
            } else {
                Responses::error("Usuário não encontrado", 422);
            }
        } catch (Exception $e) {
            Responses::error("Usuário não encontrado", 422);
        }
    }
}
