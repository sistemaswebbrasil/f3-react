<?php

namespace Controller;

use Firebase\JWT\JWT;
use Helpers\Responses;
use Controller\Base\BaseController;

/**
 * Controle de autenticação
 */
class AuthController extends BaseController
{
    public function login()
    {
        $post = json_decode($this->f3->get('BODY'), true);
        $username = $post['username'];
        $password = $post['password'];
        $pwd = md5($password);
        $user = $this->db->exec('SELECT id,email,name,username FROM users where username=:username and password=:password ', [':username'=>$username,':password'=>$pwd])[0];

        if ($user) {
            $payload = [
                "id" => $user['id'],
                "username" => $user['username'],
                "exp" => time() + (60*60*24) //24 hrs
            ];
            $token =  JWT::encode($payload, $this->f3->get('key'));
            $resp = [
                "user"  => $user,
                "token" => $token
            ];

            Responses::success($resp);
        } else {
            $this->data = ['result' => 0, 'message' => 'Invalid username and/or password'];
            Responses::error(
                "Usuário e/ou senha inválidos !". $user['username'],
                401
            );
        }
    }
}
