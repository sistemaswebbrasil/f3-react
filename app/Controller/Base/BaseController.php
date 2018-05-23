<?php

namespace Controller\Base;

use Helpers\Responses;
use DB\SQL;

/**
 * Controller genperico para servir uma funcionalidade básica para os controller que extender
 */
class BaseController
{
    protected $f3;
    protected $db;
    protected $data;
    protected $errorData = array();
    protected $account;

    public function __construct()
    {
        $f3 = \Base::instance();
        $this->f3 = $f3;
        $db = new SQL($f3->get('db_dns') . $f3->get('db_name'), $f3->get('db_user'), $f3->get('db_pass'));
        $this->db = $db;
    }
}
