<?php
// charge et initialise les bibliothèques globales
require_once 'model.php';
require_once 'controllers.php';
// route la requête en interne
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
if ( '/SeriousGame/index.php' == $uri && isset($_POST['login']) && isset($_POST['password']) ){
 	ComptePerso_action($_POST['login'], $_POST['password']);
}
elseif ( '/SeriousGame/index.php' == $uri || '/SeriousGame/' == $uri ) {
 	login_action();
}

?>