<?php

	require 'modeles/compte.php';


	$nomTheme = get_theme_from_idcompte($_SESSION['ID']);

	if($nomTheme == false AND strlen($_POST['Theme']) > 0)
	{
		$NomAvatar = get_avatar_from_theme($_POST['Theme']);
		add_avatar_to_account($_SESSION['ID'], $NomAvatar['NomAvatar']);
	}
	else
	{
		echo 'Désolé, une erreur est survenue.';
		exit;
	}

	include 'vues/compte.php';
	include 'vues/layout.inc.php';
?>
