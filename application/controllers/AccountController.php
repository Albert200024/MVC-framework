<?php

namespace   application\controllers;

use application\core\Controller;
use application\lib\Db;

class AccountController extends Controller {
      public function loginAction(){
          if(!empty($_POST)){
             exit(json_encode(["status" => "success", "message" => "Success"]));
          }
          $this->view->render("Login");
      }

      public function registerAction(){
          $this->view->render("Register", );
      }
}