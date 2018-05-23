<?php

namespace Controller\Base;

use \Firebase\JWT\JWT;
use Helpers\Responses;
use Controller\Base\BaseController;

/**
 * Controle de autenticação genérico , para não deixar mostar a págian se não logado
 */
class BaseAuthController extends BaseController
{
    public function getAuthorizationHeader()
    {
        return $this->f3->get('HEADERS.Authorization');
    }

    public function getBearerToken()
    {
        $headers = $this->getAuthorizationHeader();
        if (!empty($headers)) {
            $headersData = explode(" ", $headers);
            return $headersData[1];
        } else {
            return null;
        }
    }

    public function validateToken($token)
    {
        try {
            $decoded = JWT::decode($token, $this->f3->get('key'), array('HS256'));
            $this->account = $decoded;
        } catch (Exception $e) {
            return false;
        }
        return true;
    }

    public function beforeroute()
    {
        $token = $this->getBearerToken();
        if (isset($token)) {
            if (!$this->validateToken($token)) {
                Responses::error("Token Inválido", 403);
            }
        } else {
            Responses::error("Necessário estar logado", 403);
        }
    }
}
