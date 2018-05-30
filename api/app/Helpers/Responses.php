<?php

namespace Helpers;

/**
 * Exibe o retorno em json e com controle do status
 */
class Responses
{
    public static function success($data, $code = 200)
    {
        http_response_code($code);
        header("Cache-Control: no-transform,public,max-age=300,s-maxage=900");
        header('Content-Type: application/json');
        header('Status: '. (new self)->headerStatus($code));
        echo json_encode(array(
            'status' => true,
            'data' => $data
            ));
        die();
    }

    public static function error($message = 'Erro no servidor PHP', $code = 500, $data = [])
    {
        http_response_code($code);
        header("Cache-Control: no-transform,public,max-age=300,s-maxage=900");
        header('Content-Type: application/json');
        header('Status: '. (new self)->headerStatus($code));
        $array['status'] = $code < 300;
        $array['message'] = $message;
        if ($data) {
            $array['data'] = $data;
        }
        echo json_encode($array);
        die();
    }

    protected function headerStatus($code)
    {
        switch ($code) {
            case 200:
                return '200 OK';
                break;
            case 400:
                return '400 Bad Request';
                break;
            case 422:
                return 'Unprocessable Entity';
                break;
            case 500:
                return '500 Internal Server Error';
                break;
        }
    }
}
