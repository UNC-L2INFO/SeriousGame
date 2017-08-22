<?php
 
 function login_action()
 {
 	require 'vue/Connection.php';
 }


function ComptePerso_action( $login, $password)
 {
 	if( !is_user( $login, $password ) )                                 
  		$login=''; 
  	require 'vue/ComptePerso.php';
 }

 function Mauvais_Login()
 {
	require 'vue/ComptePerso.php';
 }

 ?>