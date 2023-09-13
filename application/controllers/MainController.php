<?php

namespace application\controllers;
use application\core\Controller;

class  MainController extends Controller {
    public function indexAction (){
        $result = $this->model->getNews();
        
        $vars = [
            "name" => "Home Page",
            "newsDay" => "Day news",
            "newsInfo" => $result
        ];

        $this->view->render("Home page", $vars);
    }
}
?>