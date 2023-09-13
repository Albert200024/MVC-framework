<?php

namespace application\core;
use application\core\View;

class Router {
    protected $routes = [];
    protected $params = [];

    public function __construct() {
        $arr = require 'application/config/routes.php';
        foreach ($arr as $key => $val) {
            $this->add($key, $val);
        }
    }

    public function add($route, $params) {
        $this->routes[$route] = $params;
    }

    public function match() {
        $url = trim($_SERVER['REQUEST_URI'],'/');
        $url = parse_url($url, PHP_URL_PATH);

        foreach ($this -> routes as $route => $params) {
            if($route === $url){
                $this -> params = $params;
                return true;
            }
        }
        return false;
    }

    public function run(){
        if ($this->match()) {
            $path = '\application\controllers\\' . ucfirst($this->params["controller"]) . "Controller";
            if(class_exists($path)){
               $action = $this->params["action"]."Action";
               if(method_exists($path, $action)){
                    $controller = new $path($this->params);
                    $controller->$action();
               } else {
                   View::errorCode(404);
               }
            } else {
                View::errorCode(404);
            }
        } else {
            View::errorCode(403);
        }
    }

}










