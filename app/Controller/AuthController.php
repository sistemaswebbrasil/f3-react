<?php

namespace Controller;

use Firebase\JWT\JWT;
use Helpers\Responses;

class AuthController extends BaseController
{
    public function login()
    {
        $email = $this->f3->get('POST.email');
        $password = $this->f3->get('POST.password');
        $pwd = md5($password);
        $user = $this->db->exec('SELECT * FROM users where email=:email and password=:password ', [':email'=>$email,':password'=>$pwd])[0];

        if ($user) {
            $payload = [
                "id" => $user['id'],
                "email" => $user['email'],
                "exp" => time() + (60*60*24) //1 jam
            ];
            $token =  JWT::encode($payload, $this->f3->get('key'));
            Responses::success($token);
        } else {
            $this->data = ['result' => 0, 'message' => 'Invalid username and/or password'];
            Responses::error("Usuário e/ou senha inválidos !", 403);
        }
    }
}
